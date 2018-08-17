//
//  AuthorViewController.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class AuthorViewController: UIViewController {

    //Outlets
    var author : Author!
    
    //Variable
    @IBOutlet weak var authorImg: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var authorBio: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set author data
        authorImg.image =  self.author.image
        authorName.text = self.author.name
        authorBio.text = self.author.bio
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "seeAuthorQuotes" {
			let vc = segue.destination as! QuotesTableViewController
			vc.author = self.author
		}
	}
	
    //Go to author quotes
    @IBAction func seeQuotesAction(_ sender: Any) {
        performSegue(withIdentifier: "seeAuthorQuotes", sender: nil)
    }
}
