//
//  ForecastViewController.swift
//  auroralert2
//
//  Created by Jessica Kasson on 11/19/16.
//  Copyright © 2016 Jessica Kasson. All rights reserved.
//

import Foundation
import UIKit

class ForecastViewController : UIViewController {
    
    @IBOutlet weak var date1day: UILabel?
    @IBOutlet weak var date2day: UILabel?
    @IBOutlet weak var date3day: UILabel?
    @IBOutlet weak var active1day: UILabel?
    @IBOutlet weak var active2day: UILabel?
    @IBOutlet weak var active3day: UILabel?
    @IBOutlet weak var minorStorm1day: UILabel?
    @IBOutlet weak var minorStorm2day: UILabel?
    @IBOutlet weak var minorStorm3day: UILabel?
    @IBOutlet weak var moderateStorm1day: UILabel?
    @IBOutlet weak var moderateStorm2day: UILabel?
    @IBOutlet weak var moderateStorm3day: UILabel?
    @IBOutlet weak var strongExtremeStorm1day: UILabel?
    @IBOutlet weak var strongExtremeStorm2day: UILabel?
    @IBOutlet weak var strongExtremeStorm3day: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Generated start of app; placeholder
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        date1day?.text! = appDelegate.get1dayFromToday()
        date2day?.text! = appDelegate.get2daysFromToday()
        date3day?.text! = appDelegate.get3daysFromToday()
        active1day?.text! = "20%"
        active2day?.text! = "15%"
        active3day?.text! = "20%"
        minorStorm1day?.text! = "1%"
        minorStorm2day?.text! = "1%"
        minorStorm3day?.text! = "1%"
        moderateStorm1day?.text! = "1%"
        moderateStorm2day?.text! = "1%"
        moderateStorm3day?.text! = "1%"
        strongExtremeStorm1day?.text! = "1%"
        strongExtremeStorm2day?.text! = "1%"
        strongExtremeStorm3day?.text! = "1%"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}