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
    var authors : [Author]
    var quotes : [Quote]
    var simbols : [String]
    var titles : [String]
    
    init() {
        let grace_img = UIImage(named:"grace_img")
        let bob_img = UIImage(named:"bob_img")
        let alan_img = UIImage(named:"alan_img")
        let anitta_img = UIImage(named:"anitta_img")
        let oprah_img = UIImage(named:"oprah_img")
        let emicida_img = UIImage(named:"emicida_img")
        
        let graceHopper = Author(name: "Grace Hopper", bio:"Grace Brewster Murray Hopper was an American computer scientist and United States Navy rear admiral. One of the first programmers of the Harvard Mark I computer, she was a pioneer of computer programming who invented one of the first compiler related tools. She popularized the idea of machine-independent programming languages, which led to the development of COBOL, an early high-level programming language still in use today.", image: grace_img!)
        let alanTuring = Author(name:"Alan Turing", bio:"Alan Mathison Turing was an English computer scientist, mathematician, logician, cryptanalyst, philosopher, and theoretical biologist. Turing was highly influential in the development of theoretical computer science, providing a formalisation of the concepts of algorithm and computation with the Turing machine, which can be considered a model of a general purpose computer. Turing is widely considered to be the father of theoretical computer science and artificial intelligence.", image: alan_img!)
        let bobMarley = Author(name:"Bob Marley", bio:"Robert Nesta Marley was a Jamaican singer-songwriter who became an international musical and cultural icon, blending mostly reggae, ska and rocksteady in his compositions. Starting out in 1963 with the group the Wailers, he forged a distinctive songwriting and vocal style that would later resonate with audiences worldwide. The Wailers would go on to release some of the earliest reggae records with producer Lee \"Scratch\" Perry.", image: bob_img!)
        let anitta = Author(name:"Anitta", bio:"Larissa de Macedo Machado known by her stage name Anitta is a Brazilian singer, songwriter, actress, dancer and businesswoman. Anitta is managed by John Shahidi of Shots Studios, a US based company backed by Justin Bieber. Anitta began singing at age 8 in a choir from a Catholic church in the Honório Gurgel neighborhood in Rio de Janeiro. At the age of 16, she attended a technical school and was called to work at Vale. In 2010, after posting a video on YouTube, Renato Azevedo, then producer of the independent record company Furacão 2000, called her to sign a contract with the label. Due to the success of the song \"Meiga e Abusada\" in 2012, she signed a contract with Warner Music Brasil the following year.", image: anitta_img!)
        let oprah = Author(name:"Oprah Winfrey", bio:"Oprah Winfrey is an American media proprietor, talk show host, actress, producer, and philanthropist. She is best known for her talk show The Oprah Winfrey Show, which was the highest-rated television program of its kind in history and was nationally syndicated from 1986 to 2011 in Chicago, Illinois. Dubbed the \"Queen of All Media\",she is the richest African-American and North America's first multi-billionaire black person and has been ranked the greatest black philanthropist in American history. Several assessments rank her as the most influential woman in the world.", image: oprah_img!)
        let emicida = Author(name:"Emicida", bio:"Leandro Roque de Oliveira, better known by his stage name Emicida, is a Brazilian MC. The rapper is known for his impromptu rhymes, that made him one of the most respected MCs in Brazil. Regarded as one of the biggest revelations of underground hip hop in his country, Emicida accumulates thousands of hits on every battle in his YouTube page and about 900 thousand views on his MySpace page.", image: emicida_img!)
        
        let q1 = Quote(text: "Challenges are gifts that force us to search for a new center of gravity. Don’t fight them. Just find a new way to stand.", author: oprah)
        let q2 = Quote(text: "I believe that at the end of the century the use of words and general educated opinion will have altered so much that one will be able to speak of machines thinking without expecting to be contradicted.", author: alanTuring)
        let q3 = Quote(text: "Life without love is a life in black in white.", author: anitta)
        let q4 = Quote(text: "Life is one big road with lots of signs. So when you riding through the ruts, don't complicate your mind. Flee from hate, mischief and jealousy. Don't bury your thoughts, put your vision to reality. Wake Up and Live!", author: bobMarley)
        let q5 = Quote(text: "Life comes down to making choices, getting right and wrong, losing and winning, crying and smiling, loving and suffering, and be prepared for both sides.", author: anitta)
        let q6 = Quote(text: "I am now going to make you a gift that will stay with you the rest of your life. For the rest of your life, every time you say, \"We've always done it that way,\" my ghost will appear and haunt you for twenty-four hours.", author: graceHopper)
        let q7 = Quote(text: "One good thing about music, when it hits you, you feel no pain.", author: bobMarley)
        let q8 = Quote(text: "Those who can imagine anything, can create the impossible.", author: alanTuring)
        let q9 = Quote(text: "You not supposed to feel down over whatever happen to you. I mean, you're supposed to use whatever happen to you as some type of upper, not a downer.", author: bobMarley)
        let q10 = Quote(text: "Be thankful for what you have; you’ll end up having more. If you concentrate)", author: oprah)
        let q11 = Quote(text: "To lose myself, to find me, with every wind that blows.", author: emicida)
        let q12 = Quote(text: "The look is more sincere than the words.", author: anitta)
        
        self.authors = [graceHopper, alanTuring, bobMarley, anitta, oprah, emicida]
            
        self.quotes = [q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12]
        
        
        self.simbols = ["#","$","%","&","+",":D","£", "∞", "≠", "π", "ø", "¥", "œ", "ß", "∂", "∆", "æ", "÷","≥", "≤", "µ", "√", "≈", "Ω", "€", "±", "Ø", "‰", "", "Æ", "◊"]
        
        
        self.titles = ["Old but gold", "(G)old", "Cute Quote", "Quite Good", "Once upon a quote", "A good quote", "Quotastic"]
    }
    
    func randomQuote() -> Quote {
        return self.quotes[Int(arc4random_uniform(UInt32(self.quotes.count)))]
    }
    
    func randomSimbol() -> String {
        return self.simbols[Int(arc4random_uniform(UInt32(self.simbols.count)))]
    }
    
    func randomTitle() -> String {
        return self.titles[Int(arc4random_uniform(UInt32(self.titles.count)))]
    }
}
