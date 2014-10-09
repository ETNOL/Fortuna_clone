//
//  ViewController.swift
//  Fortuna
//
//  Created by Eric Nolte on 10/8/14.
//  Copyright (c) 2014 Eric Nolte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quotationTextView: UITextView!
    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuote()
    }

    let delegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    func displayRandomQuote() {
        let quotes = delegate.negativeQuotes + delegate.positiveQuotes
        let indexTotal = quotes.count
        let randomIndex = arc4random_uniform(UInt32(indexTotal))
        let randomQuote = quotes[Int(randomIndex)]
        quotationTextView.text = randomQuote
    }

    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        displayRandomQuote()
        quotationTextView.editable = false
        quotationTextView.selectable = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}


