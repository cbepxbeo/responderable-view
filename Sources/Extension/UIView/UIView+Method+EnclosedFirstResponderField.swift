/*

Project: ResponderableView
File: UIView+Method+EnclosedFirstResponderField.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import UIKit

extension UIView {
    internal func enclosedFirstResponderField<Field: FirstResponderableField>() -> Field? {
        if let field = self as? Field {
            return field
        }
        else if self.subviews.isEmpty == false {
            for subView in self.subviews {
                if let field: Field = subView.enclosedFirstResponderField() {
                    return field
                }
            }
            return nil
        }
        else {
            return nil
        }
    }
}
