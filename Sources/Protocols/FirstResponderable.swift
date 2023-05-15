/*

Project: ResponderableView
File: FirstResponderable.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

internal protocol FirstResponderable: AnyObject {
    associatedtype Operations: Equatable
    
    func isFirstResponder() -> Bool
    func didTap(inside: Bool, resignableUserOperations: Operations, completion handler: @escaping (ChangeResult) -> Void)
}
