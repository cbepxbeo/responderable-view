/*

Project: ResponderableView
File: InfiltratingView.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import SwiftUI

internal struct InfiltratingView<ID: Hashable, Field: FirstResponderableField> {

    init(id: ID, firstResponder: Binding<ID?>, resignableUserOperations: Field.Operations) {
        self.id = id
        self._firstResponder = firstResponder
        self.resignableUserOperations = resignableUserOperations
    }
    
    @Binding internal var firstResponder: ID?
    internal let id: ID
    internal let resignableUserOperations: Field.Operations
    
    

}
