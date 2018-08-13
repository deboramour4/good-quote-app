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
    @IBOutlet weak var iconQuote: UILabel!
    @IBOutlet weak var titleQuoteText: UILabel!
    
    //Variables
    var quote : Quote!
    var senderIdentifier : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Shows random quotes
        if(senderIdentifier == "randomQuote") {
            self.quote = Manager.randomQuote()
        }
        
        //Custom buttom
        authorButton.layer.borderWidth = 1.0
        authorButton.layer.borderColor = UIColor(red: 1.0, green: 0.49, blue: 0.47, alpha: 1.0).cgColor
        
        //Set quote data
        quoteText.text = "\"\(self.quote.text)\""
        iconQuote.text = Manager.randomSimbol()
        titleQuoteText.text = Manager.randomTitle()
        
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		//Set author of the author page
		if segue.identifier == "viewAuthor" {
			let vc = segue.destination as! AuthorViewController
			vc.author = self.quote.author
		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	@IBAction func copyAction(_ sender: Any) {
		UIPasteboard.general.string = "\"\(self.quote.text)\" -%@ #GoodQuoteApp Download on AppStore <3"
		
		let alertCopy = UIAlertController(title: nil , message: "Quote copied!", preferredStyle: .alert)
		self.present(alertCopy, animated: true, completion: nil)
		
		let when = DispatchTime.now() + 1
		DispatchQueue.main.asyncAfter(deadline: when){
			alertCopy.dismiss(animated: true, completion: nil)
		}
	}
	
	@IBAction func authorAction(_ sender: Any) {
		performSegue(withIdentifier: "viewAuthor", sender: sender)
	}
	
	@IBAction func nextAction(_ sender: Any) {
		self.viewDidLoad()
	}

}
