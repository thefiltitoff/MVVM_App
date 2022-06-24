//
//  NetworkManager.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/24/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class NetworkManager: NSObject {
    func fetchMovies(completion: (([String]) -> ())) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
