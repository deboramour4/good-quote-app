//
//  Manager.swift
//  GoodQuote
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import Foundation
import UIKit

class Manager {
    static var authors : [Author] = [
		Author(name: "Grace Hopper", bio:"Grace Brewster Murray Hopper was an American computer scientist and United States Navy rear admiral. One of the first programmers of the Harvard Mark I computer, she was a pioneer of computer programming who invented one of the first compiler related tools. She popularized the idea of machine-independent programming languages, which led to the development of COBOL, an early high-level programming language still in use today.", image: UIImage(named:"grace_img")!),
		 Author(name:"Alan Turing", bio:"Alan Mathison Turing was an English computer scientist, mathematician, logician, cryptanalyst, philosopher, and theoretical biologist. Turing was highly influential in the development of theoretical computer science, providing a formalisation of the concepts of algorithm and computation with the Turing machine, which can be considered a model of a general purpose computer. Turing is widely considered to be the father of theoretical computer science and artificial intelligence.", image: UIImage(named:"alan_img")!),
		 Author(name:"Bob Marley", bio:"Robert Nesta Marley was a Jamaican singer-songwriter who became an international musical and cultural icon, blending mostly reggae, ska and rocksteady in his compositions. Starting out in 1963 with the group the Wailers, he forged a distinctive songwriting and vocal style that would later resonate with audiences worldwide. The Wailers would go on to release some of the earliest reggae records with producer Lee \"Scratch\" Perry.", image: UIImage(named:"bob_img")!),
		 Author(name:"Anitta", bio:"Larissa de Macedo Machado known by her stage name Anitta is a Brazilian singer, songwriter, actress, dancer and businesswoman. Anitta is managed by John Shahidi of Shots Studios, a US based company backed by Justin Bieber. Anitta began singing at age 8 in a choir from a Catholic church in the Honório Gurgel neighborhood in Rio de Janeiro. At the age of 16, she attended a technical school and was called to work at Vale. In 2010, after posting a video on YouTube, Renato Azevedo, then producer of the independent record company Furacão 2000, called her to sign a contract with the label. Due to the success of the song \"Meiga e Abusada\" in 2012, she signed a contract with Warner Music Brasil the following year.", image: UIImage(named:"anitta_img")!),
		 Author(name:"Oprah Winfrey", bio:"Oprah Winfrey is an American media proprietor, talk show host, actress, producer, and philanthropist. She is best known for her talk show The Oprah Winfrey Show, which was the highest-rated television program of its kind in history and was nationally syndicated from 1986 to 2011 in Chicago, Illinois. Dubbed the \"Queen of All Media\",she is the richest African-American and North America's first multi-billionaire black person and has been ranked the greatest black philanthropist in American history. Several assessments rank her as the most influential woman in the world.", image: UIImage(named:"oprah_img")!),
		 Author(name:"Emicida", bio:"Leandro Roque de Oliveira, better known by his stage name Emicida, is a Brazilian MC. The rapper is known for his impromptu rhymes, that made him one of the most respected MCs in Brazil. Regarded as one of the biggest revelations of underground hip hop in his country, Emicida accumulates thousands of hits on every battle in his YouTube page and about 900 thousand views on his MySpace page.", image: UIImage(named:"emicida_img")!)
	]
	
	// autores: [0]Grace [1]Alan [2]Bob [3]Anitta [4]Oprah [5]Emicida
	
    static var quotes : [Quote] = [
		Quote(text: "Challenges are gifts that force us to search for a new center of gravity. Don’t fight them. Just find a new way to stand.", author: Manager.authors[4]),
		Quote(text: "I believe that at the end of the century the use of words and general educated opinion will have altered so much that one will be able to speak of machines thinking without expecting to be contradicted.", author: Manager.authors[1]),
		Quote(text: "Life without love is a life in black in white.", author: Manager.authors[3]),
		Quote(text: "Life is one big road with lots of signs. So when you riding through the ruts, don't complicate your mind. Flee from hate, mischief and jealousy. Don't bury your thoughts, put your vision to reality. Wake Up and Live!", author: Manager.authors[2]),
		Quote(text: "Life comes down to making choices, getting right and wrong, losing and winning, crying and smiling, loving and suffering, and be prepared for both sides.", author: Manager.authors[3]),
		Quote(text: "I am now going to make you a gift that will stay with you the rest of your life. For the rest of your life, every time you say, \"We've always done it that way,\" my ghost will appear and haunt you for twenty-four hours.", author: Manager.authors[0]),
		Quote(text: "One good thing about music, when it hits you, you feel no pain.", author: Manager.authors[2]),
		Quote(text: "Those who can imagine anything, can create the impossible.", author: Manager.authors[1]),
		Quote(text: "You not supposed to feel down over whatever happen to you. I mean, you're supposed to use whatever happen to you as some type of upper, not a downer.", author: Manager.authors[2]),
		Quote(text: "Be thankful for what you have; you’ll end up having more. If you concentrate)", author: Manager.authors[4]),
		Quote(text: "To lose myself, to find me, with every wind that blows.", author: Manager.authors[5]),
		Quote(text: "The look is more sincere than the words.", author: Manager.authors[3])
	]
	
	
    static var simbols : [String] = ["#","$","%","&","+",":D","£", "∞", "≠", "π", "ø", "¥", "œ", "ß", "∂", "∆", "æ", "÷","≥", "≤", "µ", "√", "≈", "Ω", "€", "±", "Ø", "‰", "", "Æ", "◊"]
	
    static var titles : [String] = ["Old but gold", "(G)old", "Cute Quote", "Quite Good", "Once upon a quote", "A good quote", "Quotastic"]
	
    
    static func randomQuote() -> Quote {
        return self.quotes[Int(arc4random_uniform(UInt32(self.quotes.count)))]
    }
    
    static func randomSimbol() -> String {
        return self.simbols[Int(arc4random_uniform(UInt32(self.simbols.count)))]
    }
    
	static func randomTitle() -> String {
        return self.titles[Int(arc4random_uniform(UInt32(self.titles.count)))]
    }
}
