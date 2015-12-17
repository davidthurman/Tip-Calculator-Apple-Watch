//
//  InterfaceController.swift
//  Tip Calculator Apple Watch Extension
//
//  Created by David Thurman on 11/23/15.
//  Copyright © 2015 David Thurman. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tipAmountLabel: WKInterfaceLabel!
    @IBOutlet var percentLabel: WKInterfaceLabel!
    @IBOutlet var totalLabel: WKInterfaceLabel!
    @IBOutlet var percentAmount: WKInterfaceSlider!
    
    var percentNum:Int = 15
    var totalNum:Double = 30
    @IBAction func tipSlider(value: Float) {
        percentLabel.setText("Percent: " + String(Int(value)) + "%")
        percentNum = Int(value)
        var total = (Double(percentNum) * 0.01) * Double(totalNum)
        tipAmountLabel.setText(String("Tip Amount: $" + String(total)))
    }
    @IBAction func slider(value: Float) {
        totalLabel.setText("Total: $" + String(value) + "0")
        totalNum = Double(value)
        var total = (Double(percentNum) * 0.01) * Double(totalNum)
        tipAmountLabel.setText(String("Tip Amount: $" + String(total)))
    }
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
