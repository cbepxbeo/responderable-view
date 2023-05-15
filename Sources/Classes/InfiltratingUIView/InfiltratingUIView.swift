/*

Project: ResponderableView
File: InfiltratingUIView.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import Foundation
import UIKit

internal final class InfiltratingUIView<Field: FirstResponderableField>: UIView {
    internal init(
        isFirstResponder: Bool,
        eventsAllowedToResignFirstResponder: Field.Operations,
        firstResponderDidChangedByEvent: @escaping (Bool) -> Void) {
        self.initialFirstResponderStatus = isFirstResponder
        self.resignableUserOperations = eventsAllowedToResignFirstResponder
        self.firstResponderDidChangedByEvent = firstResponderDidChangedByEvent
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("---") //FIXME: need create
    }
    
    internal let initialFirstResponderStatus: Bool
    internal var resignableUserOperations: Field.Operations
    internal let firstResponderDidChangedByEvent: (Bool) -> Void
    internal weak var field: Field? = nil
    
    internal override func didMoveToWindow() {
        super.didMoveToWindow()
        guard self.field == nil else { return }
        DispatchQueue.main.async { [weak self] in
            self?.analyzeAndInitializeTextFieldStatus()
            self?.initializeToTrackWindowTapGesture()
        }
    }
}



