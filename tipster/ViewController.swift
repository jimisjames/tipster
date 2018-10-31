//
//  ViewController.swift
//  tipster
//
//  Created by jim on 10/30/18.
//  Copyright © 2018 jim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentAmount: UILabel!
    @IBOutlet weak var smallTipPercent: UILabel!
    @IBOutlet weak var smallTip: UILabel!
    @IBOutlet weak var smallTotal: UILabel!
    @IBOutlet weak var mediumTipPercent: UILabel!
    @IBOutlet weak var mediumTip: UILabel!
    @IBOutlet weak var mediumTotal: UILabel!
    @IBOutlet weak var largeTipPercent: UILabel!
    @IBOutlet weak var largeTip: UILabel!
    @IBOutlet weak var largeTotal: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    
    var amount = "0"
    var groupSize = 1
    var small = 10
    var medium = 15
    var large = 20
    
    @IBAction func zero(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func one(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func two(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func three(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func four(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func five(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func six(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func seven(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func eight(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func nine(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    
    @IBAction func decimal(_ sender: UIButton) {
        addNum(sender.currentTitle!)
    }
    @IBAction func clearBtn(_ sender: UIButton) {
        currentAmount.text = "0"
        smallTip.text = "0.00"
        smallTotal.text = "0.00"
        mediumTip.text = "0.00"
        mediumTotal.text = "0.00"
        largeTip.text = "0.00"
        largeTotal.text = "0.00"
    }
    
    @IBAction func tipRange(_ sender: UISlider) {
        smallTipPercent.text = String(Int(sender.value) - 5) + " %"
        small = Int(sender.value) - 5
        mediumTipPercent.text = String(Int(sender.value)) + " %"
        medium = Int(sender.value)
        largeTipPercent.text = String(Int(sender.value) + 5) + " %"
        large = Int(sender.value) + 5
        calculate()
    }
    
    @IBAction func groupSize(_ sender: UISlider) {
        groupSize = Int(sender.value)
        groupLabel.text = "Group Size: " + String(Int(sender.value))
        calculate()
    }
    
    
    func addNum(_ num: String){
        if currentAmount.text != "0" {
            currentAmount.text = currentAmount.text! + num
        } else {
            currentAmount.text = num
        }
        calculate()
    }
    
    func calculate(){
        smallTip.text = String(round(100 * Double(currentAmount.text!)!*Double(small)/Double(groupSize)/100)/100.0)
        smallTotal.text = String(round(100 * (Double(currentAmount.text!)!/Double(groupSize)+Double(smallTip.text!)!))/100.0)
        mediumTip.text = String(round(100 * Double(currentAmount.text!)!*Double(medium)/Double(groupSize)/100)/100.0)
        mediumTotal.text = String(round(100 * (Double(currentAmount.text!)!/Double(groupSize)+Double(mediumTip.text!)!))/100.0)
        largeTip.text = String(round(100 * Double(currentAmount.text!)!*Double(large)/Double(groupSize)/100)/100.0)
        largeTotal.text = String(round(100 * (Double(currentAmount.text!)!/Double(groupSize)+Double(largeTip.text!)!))/100.0)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

