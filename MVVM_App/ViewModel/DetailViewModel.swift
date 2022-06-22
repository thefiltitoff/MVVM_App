//
//  DetailViewModel.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/22/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) years old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
