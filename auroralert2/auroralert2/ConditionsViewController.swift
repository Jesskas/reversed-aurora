//
//  ConditionsViewController.swift
//  auroralert2
//
//  Created by Jessica Kasson on 11/19/16.
//  Copyright © 2016 Jessica Kasson. All rights reserved.
//

import Foundation
import UIKit

class ConditionsViewController : UIViewController {
    
    @IBOutlet weak var lastUpdatedLabel: UILabel?
    
    @IBOutlet weak var currentKp: UILabel?
    @IBOutlet weak var kpIn1Hour: UILabel?
    @IBOutlet weak var kpIn4Hours: UILabel?
    @IBOutlet weak var brandonMBKIndex: UILabel?
    @IBOutlet weak var currentKpCond: UILabel?
    @IBOutlet weak var kpIn1HourCond: UILabel?
    @IBOutlet weak var kpIn4HoursCond: UILabel?
    @IBOutlet weak var brandonMBKIndexCond: UILabel?
    @IBOutlet weak var kpNeededForAurora: UILabel?

    @IBOutlet weak var solarWindSpeed: UILabel?
    @IBOutlet weak var solarWindDensity: UILabel?
    @IBOutlet weak var IMFMagnitude: UILabel?
    @IBOutlet weak var IMFZComponent: UILabel?
    @IBOutlet weak var boyleIndex: UILabel?
    @IBOutlet weak var DSTIndex: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Generated start of app; placeholder
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let lastUpdated: String = appDelegate.getLastUpdated()
        lastUpdatedLabel?.text!.appendContentsOf(lastUpdated)
    
        // Placeholder designations
        currentKp?.text = "0.33"
        kpIn1Hour?.text = "0.67"
        kpIn4Hours?.text = "0.33"
        brandonMBKIndex?.text = "0"
        kpNeededForAurora?.text = "6.0"
        solarWindSpeed?.text = "Unavailable"
        solarWindDensity?.text = "Unavailable"
        IMFMagnitude?.text = "Unavailable"
        IMFZComponent?.text = "Unavailable"
        boyleIndex?.text = "Unavailable"
        DSTIndex?.text = "Unavailable"
        
        // Placeholder post-analysis
        if Float((currentKp?.text!)!) < 1.0 {
            self.currentKpCond?.text = "(Quiet)"
        }
        if Float((kpIn1Hour?.text!)!) < 1.0 {
            self.kpIn1HourCond?.text = "(Quiet)"
        }
        if Float((kpIn4Hours?.text!)!) < 1.0 {
            self.kpIn4HoursCond?.text = "(Quiet)"
        }
        if Float((brandonMBKIndex?.text!)!) < 1.0 {
            self.brandonMBKIndexCond?.text = "(Quiet)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}