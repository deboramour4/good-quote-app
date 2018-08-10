//
//  Quote.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import Foundation

class Quote {
    var text : String
    var author : Author
    
    init(text: String, author: Author) {
        self.text = text
        self.author = author
    }
}
