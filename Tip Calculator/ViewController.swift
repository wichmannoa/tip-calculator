//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Otto on 2/20/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var holdBillAmount: Double = 0.0;
    var holdTipAmount: Double = 0.0;
    var holdNumberOfPeople: Double = 0.0;
    var holdBillTotals: Double = 0.0;
    
    @IBOutlet weak var inputBill: UITextField!
    @IBOutlet weak var inputTip: UITextField!
    @IBOutlet weak var inputNumberOfPeople: UITextField!
    
    @IBOutlet weak var lblTipTotal: UILabel!
    @IBOutlet weak var lblBillTotal: UILabel!
    
    @IBOutlet weak var btnCalulate: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    @IBAction func calculateTip(sender: AnyObject) {
        lblTipTotal.hidden = false;
        btnCalulate.hidden = true;
        btnBack.hidden = false;
        lblBillTotal.hidden = false;
        inputBill.hidden = true;
        inputTip.hidden = true;
        inputNumberOfPeople.hidden = true;
        holdBillAmount = Double(inputBill.text!)!;
        holdTipAmount = Double(inputTip.text!)! / 100;
        holdNumberOfPeople = Double(inputNumberOfPeople.text!)!;
        holdBillTotals = holdBillAmount * holdTipAmount
        if Double(inputNumberOfPeople.text!)! > 1{
            lblBillTotal.text = "Total $\((holdBillTotals + holdBillAmount) / holdNumberOfPeople) per person"
            lblTipTotal.text = "Tip $\(holdBillTotals / holdNumberOfPeople) per person"
        }else{
          lblBillTotal.text = "Total $\((holdBillTotals + holdBillAmount) / holdNumberOfPeople)"
            lblTipTotal.text = "Tip $\(holdBillTotals / holdNumberOfPeople)"
        }
        
    
    }
    @IBAction func Back(sender: AnyObject) {
        btnCalulate.hidden = false
        lblTipTotal.hidden = true;
        lblBillTotal.hidden = true;
        inputBill.hidden = false;
        btnBack.hidden = true;
        inputTip.hidden = false;
        inputNumberOfPeople.hidden = false;
    }
}

