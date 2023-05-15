/*

Project: ResponderableView
File: UIView+Method+FindLinkedField.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import UIKit

extension UIView {
    internal func findLinkedField<Field: FirstResponderableField>() -> Field? {
        guard let rootSwiftUIHostView = self.findHostSwiftUIView() else { return nil }
        guard let containerView = rootSwiftUIHostView.superview else { return nil }
        let location = rootSwiftUIHostView.frame.origin
        for nsView in containerView.subviews {
            if nsView !== rootSwiftUIHostView && nsView.frame.origin == location {
                if let field: Field = nsView.enclosedFirstResponderField() {
                    return field
                }
            }
        }
        return nil
    }
}
