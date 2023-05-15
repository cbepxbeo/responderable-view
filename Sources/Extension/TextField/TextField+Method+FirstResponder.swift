/*

Project: ResponderableView
File: TextField+Method+FirstResponder.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import SwiftUI

extension TextField {
    public func firstResponder<Identifier: Hashable>(
        id: Identifier,
        firstResponder: Binding<Identifier?>,
        resignableUserOperations: ResignableUserOperations = .all) -> some View {
            self
                .background(
                    InfiltratingView<Identifier, UITextField>(
                        id: id, firstResponder: firstResponder,
                        resignableUserOperations: resignableUserOperations
                    )
                )
        }
}
