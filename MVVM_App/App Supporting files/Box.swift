//
//  Box.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/24/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
}
