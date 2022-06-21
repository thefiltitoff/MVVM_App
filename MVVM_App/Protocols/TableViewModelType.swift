//
//  TableViewModelType.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

protocol TableViewViewModelType {
    var numberOfRows: Int { get }
    func cellViewModel(forIndexPath  indexPath: IndexPath) -> TableViewCellViewModelType?
}
