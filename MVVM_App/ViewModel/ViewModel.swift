//
//  ViewModel.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation


class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "Obi-wan", secondName: "Kenobi", age: 33),
        Profile(name: "Anakyn", secondName: "Skywalker", age: 23),
        Profile(name: "Luke", secondName: "Skywalker", age: 20)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {
            return nil
        }

        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        selectedIndexPath = indexPath
    }
}
