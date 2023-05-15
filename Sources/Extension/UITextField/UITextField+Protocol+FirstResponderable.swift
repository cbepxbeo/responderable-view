/*

Project: ResponderableView
File: UITextField+Protocol+FirstResponderable.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import UIKit

extension UITextField: FirstResponderable {
    
    internal func isFirstResponder() -> Bool {
        self.isFirstResponder
    }
    
    internal func didTap(inside: Bool, resignableUserOperations: ResignableUserOperations, completion handler: @escaping (ChangeResult) -> Void) {
        if inside {
            DispatchQueue.main.async {
                handler(self.isFirstResponder() ? .focused : .resigned)
            }
        }
        else {
            if resignableUserOperations.contains(.tapOutside) && self.isFirstResponder() {
                handler(.resigned)
            }
        }
    }
    
}
