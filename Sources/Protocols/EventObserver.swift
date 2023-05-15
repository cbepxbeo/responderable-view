/*

Project: ResponderableView
File: EventObserver.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

import Foundation

internal protocol EventObserver: AnyObject {
    func didTapInWindow(at: CGPoint)
}
