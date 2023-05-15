/*

Project: ResponderableView
File: FirstResponderTapGesture+Method+Add.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

extension FirstResponderTapGesture{
    internal func add(observer: EventObserver) {
        guard !observers.contains(where: { $0.object === observer }) else { return }
        self.observers.append(.init(observer))
    }
}
