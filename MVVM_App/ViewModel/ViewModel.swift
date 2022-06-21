//
//  ViewModel.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation


class ViewModel: TableViewViewModelType {
    
    
    var numberOfRows: Int {
        profiles.count
    }
    
    var profiles = [
        Profile(name: "Obi-wan", secondName: "Kenobi", age: 33),
        Profile(name: "Anakyn", secondName: "Skywalker", age: 23),
        Profile(name: "Luke", secondName: "Skywalker", age: 20)
    ]
    
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        
        return TableViewCellViewModel(profile: profile)
    }
}
