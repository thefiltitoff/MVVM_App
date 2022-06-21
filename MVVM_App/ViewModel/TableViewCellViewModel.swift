//
//  TableViewCellViewModel.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    private var profile: Profile!
    
    var fullName: String {
        profile.name + " " + profile.secondName
    }
    
    var age: String {
        String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
