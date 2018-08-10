//
//  QuoteViewController.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var quoteText: UITextView!
    @IBOutlet weak var authorButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var copButton: UIBarButtonItem!
    @IBOutlet weak var iconQuote: UILabel!
    @IBOutlet weak var titleQuoteText: UILabel!
    
    //Variables
    var quote : Quote!
    var senderIdentifier : String!
    var m : Manager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Shows random quotes
        if(senderIdentifier == "randomQuote") {
            quote = m.randomQuote()
        }
        
        //Custom buttom
        authorButton.layer.borderWidth = 1.0
        authorButton.layer.borderColor = UIColor(red: 1.0, green: 0.49, blue: 0.47, alpha: 1.0).cgColor
        
        //Set quote data
        quoteText.text = "\"\(self.quote.text)\""
        iconQuote.text = m.randomSimbol()
        titleQuoteText.text = m.randomTitle()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}