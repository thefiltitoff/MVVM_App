//
//  DetailViewController.swift
//  MVVM_App
//
//  Created by Felix Titov on 6/22/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewDidLoad() {
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
}
