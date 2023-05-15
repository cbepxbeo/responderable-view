/*

Project: ResponderableView
File: InfiltratingView+Protocol+UIViewRepresentable.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import SwiftUI

extension InfiltratingView : UIViewRepresentable {
    
    internal func makeUIView(context: Context) -> InfiltratingUIView<Field> {
        InfiltratingUIView(
            isFirstResponder: id == firstResponder,
            eventsAllowedToResignFirstResponder: resignableUserOperations) { focused in
            if focused {
                if self.firstResponder != id {
                    self.firstResponder = id
                }
            }
            else {
                if self.firstResponder == id {
                    self.firstResponder = nil
                }
            }
        }
    }
    
    internal func updateUIView(_ uiView: InfiltratingUIView<Field>, context: Context) {
        DispatchQueue.main.async {
            uiView.update(firstResponder: id == firstResponder, resignableUserOperations: resignableUserOperations)
        }
    }
    
}
