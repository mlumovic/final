//
//  CouponCalc.swift
//  MegaCalc
//
//  Created by Mlumovic on 12/8/15.
//  Copyright (c) 2015 Mlumovic. All rights reserved.
//

import UIKit

class CouponCalc: UIViewController
{
    @IBOutlet weak var itemCost: UITextField!
    @IBOutlet weak var tax: UITextField!
    @IBOutlet weak var itemTotal: UILabel!
    @IBOutlet weak var coupon: UITextField!
    @IBOutlet weak var moneySaved: UILabel!
    @IBOutlet weak var totalBill: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()

       
    }

    @IBAction func button(sender: UIButton)
    {
        var bill = NSString(string: itemCost.text).doubleValue
        var tax1 = NSString(string: tax.text!).doubleValue
        var total = NSString(string: itemTotal.text!).doubleValue
        
        
        
               
    }
    
    
}
 

