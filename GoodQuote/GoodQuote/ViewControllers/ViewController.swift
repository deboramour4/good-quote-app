//
//  ViewController.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	//Outlets
	@IBOutlet weak var randomQuoteButton: UIButton!
	@IBOutlet weak var findQuoteButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "randomQuote" {
			let vc = segue.destination as! QuoteViewController
			vc.senderIdentifier = "randomQuote"
		}
	}

	
	@IBAction func randomQuoteAction(_ sender: Any) {
		performSegue(withIdentifier: "randomQuote", sender: self)
	}
	
	
	@IBAction func findQuoteAction(_ sender: Any) {
		performSegue(withIdentifier: "allQuotes", sender: self)
	}
}
