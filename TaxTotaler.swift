//
//  TaxTotaler.swift
//  MegaCalc
//
//  Created by Mlumovic on 12/8/15.
//  Copyright (c) 2015 Mlumovic. All rights reserved.
//

import UIKit

class TaxTotaler: UIViewController
{
    @IBOutlet weak var billTotal: UITextField!
    @IBOutlet weak var taxPre: UITextField!
    @IBOutlet weak var totalBill: UILabel!

    
    
    @IBAction func totalButton(sender: AnyObject)
    {
       var bill = NSString(string: billTotal.text!).doubleValue
        var tax = NSString(string: taxPre.text!).doubleValue
        var total = NSString(string: totalBill.text!).doubleValue
        
        tax = tax * 0.01
        total = (tax * bill) + bill
        totalBill.text = "\(total)"        

    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
}

