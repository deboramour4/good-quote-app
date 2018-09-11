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
    @IBOutlet weak var quoteText: UILabel!
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
        
        //Set quote data
        quoteText.text = "\"\(self.quote.text)\""
        iconQuote.text = Manager.randomSimbol()
		authorButton.setTitle(self.quote.author.name, for: .normal)
		
        titleQuoteText.text = Manager.randomTitle()
		
		if senderIdentifier != "randomQuote"{
			//self.nextButton.isHidden = true
		}
		
		if senderIdentifier == "allAuthorQuotes" {
			self.authorButton.isEnabled = false
			self.authorButton.layer.borderWidth = 0.0
		}
        
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
		UIPasteboard.general.string = "\"\(self.quote.text)\" - #GoodQuoteApp Download on AppStore <3"
		
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
