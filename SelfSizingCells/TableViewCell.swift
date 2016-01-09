//
//  TableViewCell.swift
//  SelfSizingCells
//
//  Created by Arvindh Sukumar on 02/01/16.
//  Copyright © 2016 Arvindh Sukumar. All rights reserved.
//

import UIKit

let tableViewCellIdentifier = "TableViewCell"
let kDefaultPhotoWidth: CGFloat = 64
let kDefaultPhotoRightMargin: CGFloat = 8

class TableViewCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var photoWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var photoRightMarginConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
