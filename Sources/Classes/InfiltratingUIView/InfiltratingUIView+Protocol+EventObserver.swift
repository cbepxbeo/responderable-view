/*

Project: ResponderableView
File: InfiltratingUIView+Protocol+EventObserver.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import Foundation

extension InfiltratingUIView: EventObserver {
    internal func didTapInWindow(at pointInWindow: CGPoint) {
        guard let field = self.field else { return }
        
        let pointInField = field.convert(pointInWindow, from: nil)
        let tapInside = field.bounds.contains(pointInField)
        
        field.didTap(inside: tapInside, resignableUserOperations: self.resignableUserOperations) { result in
            switch result {
            case .resigned:
                self.firstResponderDidChangedByEvent(false)
            case .focused:
                self.firstResponderDidChangedByEvent(true)
            }
        }
    }
}
