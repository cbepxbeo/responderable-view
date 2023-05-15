/*

Project: ResponderableView
File: InfiltratingUIView+Method+InitializeToTrackWindowTapGesture.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

extension InfiltratingUIView {
    func initializeToTrackWindowTapGesture() {
        guard field != nil else { return }
        guard let window = self.window else { return }
        
        if let windowTapGesture = window.gestureRecognizers?.first(where: { $0 is FirstResponderTapGesture }) as? FirstResponderTapGesture {
            windowTapGesture.add(observer: self)
        }
        else {
            let windowTapGesture = FirstResponderTapGesture(from: self)
            window.addGestureRecognizer(windowTapGesture)
        }
    }
    
    
}
