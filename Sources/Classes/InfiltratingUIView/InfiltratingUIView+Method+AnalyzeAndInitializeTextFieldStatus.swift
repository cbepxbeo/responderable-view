/*

Project: ResponderableView
File: InfiltratingUIView+Method+AnalyzeAndInitializeTextFieldStatus.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

extension InfiltratingUIView {
    internal func analyzeAndInitializeTextFieldStatus() {
        guard field == nil else { return }
        field = self.findLinkedField()
        
        guard let field = self.field else { return }
        self.update(firstResponder: initialFirstResponderStatus, newResignableUserOperations: self.resignableUserOperations, of: field)
    }
}
