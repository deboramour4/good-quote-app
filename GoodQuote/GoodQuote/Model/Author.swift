//
//  Author.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import Foundation
import UIKit

class Author {
    var name : String
    var bio : String
    var image : UIImage
    var quotes : [Quote] = []

    
    init(name: String, bio: String, image: UIImage) {
        self.name = name
        self.bio = bio
        self.image = image
    }
    
    func addQuote(_ quote: Quote) {
        self.quotes.append(quote)
    }
}
