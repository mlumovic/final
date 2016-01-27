//
//  TipCalc.swift
//  MegaCalc
//
//  Created by Mlumovic on 12/8/15.
//  Copyright (c) 2015 Mlumovic. All rights reserved.
//

import UIKit

class TipCalc: UIViewController
{
    @IBOutlet weak var totalBillTextField: UITextField!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var totalTip: UILabel!
    @IBOutlet weak var totalBill: UILabel!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }

    @IBAction func segmentAction(sender: UISegmentedControl)
    {
    
        if segment.selectedSegmentIndex == 0
        {
            calculateTip(0.10)
        }
            
        else if segment.selectedSegmentIndex == 1
        {
            calculateTip(0.15)
        }
        
        else if segment.selectedSegmentIndex == 2
        {
            calculateTip(0.20)
        }
        
        else if segment.selectedSegmentIndex == 3
        {
            calculateTip(0.25)
        }

        
    }
    
    func calculateTip(tipPercent: Double) -> (String, String)
    {
        var subTotalDouble = (totalBillTextField.text as NSString).doubleValue
        var tipAmount = subTotalDouble * tipPercent
        totalBill.text = String(format : "$%.2f",subTotalDouble + tipAmount)
        
        totalTip.text = String(format: "$%.2f", tipAmount)
        
        totalBillTextField.resignFirstResponder()
        
        return (totalTip.text!, totalBill.text!)
    }
    
    

}
