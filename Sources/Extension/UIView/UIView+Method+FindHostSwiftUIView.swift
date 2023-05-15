/*

Project: ResponderableView
File: UIView+Method+FindHostSwiftUIView.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import UIKit

extension UIView {
    internal func findHostSwiftUIView() -> UIView? {
        if let parent = self.superview {
            if parent.subviews.count > 1 {
                return self
            }
            else {
                return parent.findHostSwiftUIView()
            }
        }
        else {
            return nil
        }
    }
}
