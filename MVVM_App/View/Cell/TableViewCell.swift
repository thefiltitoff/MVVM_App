//
//  TableViewCell.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/22/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
    

}
