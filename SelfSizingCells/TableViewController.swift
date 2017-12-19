//
//  TableViewController.swift
//  SelfSizingCells
//
//  Created by Arvindh Sukumar on 02/01/16.
//  Copyright © 2016 Arvindh Sukumar. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var viewModel:ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewModel = ViewModel()
        self.tableView.delegate = viewModel
        self.tableView.dataSource = viewModel
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: Bundle.main), forCellReuseIdentifier: tableViewCellIdentifier)
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 50; 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}
