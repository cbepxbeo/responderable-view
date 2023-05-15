/*

Project: ResponderableView
File: TextEditor+Method+FirstResponder.swift
Created by: Egor Boyko
Date: 14.05.2023

*/


import SwiftUI

extension TextEditor {
    public func firstResponder<Identifier: Hashable>(
        id: Identifier,
        firstResponder: Binding<Identifier?>,
        resignableUserOperations: ResignableUserOperations = .all) -> some View {
            self
                .background(
                    InfiltratingView<Identifier, UITextView>(
                        id: id,
                        firstResponder: firstResponder,
                        resignableUserOperations: resignableUserOperations
                    )
                )
        }
}
