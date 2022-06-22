//
//  TableViewModelType.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath  indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
}
