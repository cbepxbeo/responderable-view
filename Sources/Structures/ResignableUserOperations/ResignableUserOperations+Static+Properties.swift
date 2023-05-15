/*

Project: ResponderableView
File: ResignableUserOperations+Static+Properties.swift
Created by: Egor Boyko
Date: 14.05.2023

*/

extension ResignableUserOperations {
    public static let tapOutside = ResignableUserOperations(rawValue: 1 << 0)
    public static let all: ResignableUserOperations = [.tapOutside]
    public static let none: ResignableUserOperations = []
}
