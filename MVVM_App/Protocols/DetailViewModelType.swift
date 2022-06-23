//
//  DetailViewModelType.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/22/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
