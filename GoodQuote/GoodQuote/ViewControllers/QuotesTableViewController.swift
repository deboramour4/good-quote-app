//
//  AllQuotesViewController.swift
//  GoodQuote
//
//  Created by Ada 2018 on 13/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class QuotesTableViewController: UIViewController {

	
	//Variables
	var author : Author?
	var quotes : [Quote] = []
	
    override func viewDidLoad() {
        super.viewDidLoad()

		//Check if it is all quotes or just and author quotes
		if let author = self.author {
			self.quotes = Manager.quotes.filter { a in
				return a.author.name == author.name
			}
		} else {
			self.quotes = Manager.quotes
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	//Prepare Segue
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "viewQuote" {
			let vc = segue.destination as! QuoteViewController
			vc.quote = sender as! Quote
			
			if self.author != nil {
				vc.senderIdentifier = "allAuthorQuotes"
			}
		}
	}

}

extension QuotesTableViewController : UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.quotes.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let quote = self.quotes[indexPath.row]
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "quoteCell", for: indexPath) as! QuotesViewCell
		cell.quoteText.text = quote.text
		cell.authorName.text = quote.author.name
		cell.authorImage.image = quote.author.image
		//cell.quote = quote
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let selectedQuote = self.quotes[indexPath.row]
		performSegue(withIdentifier: "viewQuote", sender: selectedQuote)
	}
}
