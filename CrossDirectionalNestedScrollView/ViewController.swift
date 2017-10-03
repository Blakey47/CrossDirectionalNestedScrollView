//
//  ViewController.swift
//  CrossDirectionalNestedScrollView
//
//  Created by Darragh on 10/3/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }

    var dataItems: [String] = ["This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               "This is simply a long sentence to show an example of of Nested ScrollViews",
                               ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        
        cell.dataLabel.text = dataItems[indexPath.row]
                
        return cell
    }

}

