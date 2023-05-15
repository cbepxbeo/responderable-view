/*

Project: ResponderableView
File: InfiltratingUIView+Methods+Update.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

extension InfiltratingUIView {
    internal func update(firstResponder: Bool, resignableUserOperations operations: Field.Operations) {
        guard let field = self.field else {
            return
        }
        self.update(firstResponder: firstResponder, newResignableUserOperations: operations, of: field)
    }
    
    
    internal func update(firstResponder: Bool, newResignableUserOperations: Field.Operations, of field: Field) {
        if self.resignableUserOperations != newResignableUserOperations {
            self.resignableUserOperations = newResignableUserOperations
        }
        
        if field.isFirstResponder != firstResponder {
            if firstResponder {
                field.becomeFirstResponder()
            }
            else {
                field.resignFirstResponder()
            }
        }
    }
}
