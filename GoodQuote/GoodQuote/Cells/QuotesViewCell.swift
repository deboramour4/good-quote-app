//
//  QuotesViewCell.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class QuotesViewCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var quoteText: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    
    //Variables
    var quote : Quote!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
