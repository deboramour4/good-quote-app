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
	@IBOutlet weak var tableView: UITableView!
	let searchController = UISearchController(searchResultsController: nil)
	
    override func viewDidLoad() {
        super.viewDidLoad()

		//Check if it is all quotes or just and author quotes
		if let author = self.author {
			self.quotes = Manager.quotes.filter { a in
				return a.author.name == author.name
			}
		} else {
			self.quotes = Manager.quotes
			searchController.searchBar.scopeButtonTitles = ["Quotes", "By Author"]
		}
		
		// Setup the Search Controller
		searchController.searchResultsUpdater = self
		searchController.obscuresBackgroundDuringPresentation = false
		searchController.searchBar.placeholder = "Search Quotes"
		navigationItem.searchController = searchController
		definesPresentationContext = true
		extendedLayoutIncludesOpaqueBars = true
		searchController.delegate = self
		searchController.searchBar.delegate = self
		searchController.searchBar.tintColor = UIColor(named: "primary")
		
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

	func filterContentForSearchText(_ searchText: String, scope: String = "Quotes") {
		searchController.searchBar.placeholder = "Search \(scope)"
		
		quotes = Manager.quotes.filter({( quote : Quote) -> Bool in
			if searchBarIsEmpty() {
				return true
			} else {
				if scope == "Quotes" {
					return quote.text.lowercased().contains(searchText.lowercased())
				} else {
					return quote.author.name.lowercased().contains(searchText.lowercased())
				}
			}
		})
		tableView.reloadData()
	}
	
	func searchBarIsEmpty() -> Bool {
		return searchController.searchBar.text?.isEmpty ?? true
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

extension QuotesTableViewController: UISearchResultsUpdating {
	func updateSearchResults(for searchController: UISearchController) {
		let searchBar = searchController.searchBar
		let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
		filterContentForSearchText(searchController.searchBar.text!, scope: scope)
	}
}

extension QuotesTableViewController: UISearchBarDelegate {
	func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
		filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
	}
}

extension QuotesTableViewController: UISearchControllerDelegate {

}

