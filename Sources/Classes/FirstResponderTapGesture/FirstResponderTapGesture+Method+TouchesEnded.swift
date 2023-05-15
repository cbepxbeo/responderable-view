/*

Project: ResponderableView
File: FirstResponderTapGesture+Method+TouchesEnded.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import UIKit

extension FirstResponderTapGesture {
    internal override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesEnded(touches, with: event)
        
        if self.state == .recognized, let firstTouch = touches.first {
            let locationInWindow = firstTouch.location(in: nil)
  
            for observer in observers {
                observer.object?.didTapInWindow(at: locationInWindow)
            }
        }
    }
}
