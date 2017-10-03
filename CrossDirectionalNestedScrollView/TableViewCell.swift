//
//  File.swift
//  CrossDirectionalNestedScrollView
//
//  Created by Darragh on 10/3/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        scrollView.contentSize = CGSize(width: 2000, height: 2000)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        }
    
}
