/*

Project: ResponderableView
File: FirstResponderableField.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import Foundation
import UIKit

internal final class FirstResponderTapGesture: UITapGestureRecognizer {
    internal var observers: [EventObserverStorage]
    
    internal init(from observer: EventObserver) {
        self.observers = [.init(observer)]
        super.init(target: nil, action: nil)
        self.cancelsTouchesInView = false
    }
    
 
}
