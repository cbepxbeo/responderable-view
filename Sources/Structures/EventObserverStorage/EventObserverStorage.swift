/*

Project: ResponderableView
File: EventObserver.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

internal struct EventObserverStorage {
    internal init(_ object: EventObserver) {
        self.object = object
    }
    
    internal weak var object: EventObserver?
}



