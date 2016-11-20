//
//  InfoContentView.swift
//  auroralert2
//
//  Created by Jessica Kasson on 11/18/16.
//  Copyright © 2016 Jessica Kasson. All rights reserved.
//

import Foundation
import UIKit

class InfoViewController : UIViewController {
    
    // The view to add labels to, which is a subview of the UIScrollView
    @IBOutlet weak var contentView : UIView!
    
    // The string table of strings, followed by expected necessary rendering height
    var stringTable = [
        "What does it all mean?",
        "Aurora Alert is designed to work “right out of the box”, without any configuration necessary. When it’s first launched, it will find your location if it can, and configure the alert settings based on that. If you wish, you can change any settings to fit your needs, just be aware of what they may do.",
        "What’s new?",
        "Version 1.03 of Aurora Alert features a more advanced, high resolution map. There is now a zoomed-in and zoomed-out version of the map. To switch between the two, you press and hold the map on the screen.",
        "Kp Index",
        "The Kp is the most indicative value of auroral activity. It ranges from 0-9 with 0 indicating no activity and 9 meaning extreme activity. In genera, the higher the Kp index is, the closer to the equator the aurora can be seen. Aurora Alert will automatically find the necessary Kp you need to see the aurora based on your location. Keep in mind that the Kp isn’t necessarily 100% accurate; there may be instances when you can see the aurora with a lower Kp than minimum threshold Aurora Alert provides to you. You can adjust the “Kp Threshold” yourself in the app settings, but bear in mind that Aurora Alert has been customized to provide you with an optimal setting.",
        "K Index",
        "The K Index is the local version of the Kp Index. In fact, the Kp is derived from a weighted average of different K-indices around the world. Some K indices are updated more often than the Kp index, so it may serve as a good alternative to determine aurora activity. Aurora Alert automatically determines the closest K Index station to your location. If none appear on the main screen, you are not in a reasonable range of one.",
        "Solar Wind",
        "In general the higher the solar wind speed the stronger it’s effects are seen on earth.",
        "Interplanetary Magnetic Field (IMF)",
        "The IMF is the sun’s magnetic field, carried by the solar wind, measured in nanoteslas. The magnitude of the IMF on a quiet day is about 3 nT, and this increases many-fold during a geomagnetic storm. The greatest chances for activity arise from a strong IMF pointing in a southward direction.",
        "Boyle Index",
        "The boyle index is derived from solar wind and IMF data. It is a very good predictor of upcoming auroral activity. A three hour average of the boyle index of 160kV or more often indicates a geomagnetic storm in progress. A boyle index of 250kV or more often indicates a strong geomagnetic storm.",
        "DST Index",
        "The DST index is a measurement of the earth’s ring current, which counteracts it’s magnetic field, thus allowing solar particles to reach the atmosphere. A DST value of -50nT or less indicates a geomagnetic storm in progress. -100nT or less indicates an extreme geomagnetic storm.",
        "Maps",
        "Aurora Alert displays a map according to your location. The bright green shaded area of the map (if shown) shows where the aurora should be, based on the current Kp and time of day. If your location is under the shaded area, then in the right conditions, you should be able to see the aurora overhead. The thin green line represents the maximum viewing boundary. If you are between the shaded are and the green line, in ideal conditions, you may be able to see the aurora just above the horizon. If you’re outside of these regions when Kp=9, the chances of you seeing the aurora are slim, but not impossible.",
        "Graphs",
        "The multiple graphics in Aurora Alert show past activity for Kp (past 48 hours) and K indices (past 24 hours). The forecast graph for Kp displays NOAA predictions for the coming 2-3 days. All times are local based on a 24-hour clock.",
        "When can I see the aurora?",
        "First and foremost, the Kp or nearest K index should be at or above the threshold determined by Aurora Alert for your location. It is possible to have a slightly lower Kp or K index and still see the aurora on the horizon, but less likely. Next it needs to be dark. The darkest hours of the night are the best, with clear skies. Light pollution is a factor as well. You’ll have a greater chance of seeing the aurora farther away from city lights.",
        "Report Bugs",
        "Please report any bugs to: [redacted]",
        "Credits",
        "Kp predictions and data are provided by NOAA. Some K-Index data is calculated from magnetic data provided by USGS. Weather data is provided by OpenWeatherMap.org. Copyright belongs to the original devs!"
    ]
    var stringSizes = [20, 65, 20, 50, 20, 145, 20, 90,
                       20, 40, 20, 70, 20, 60, 20, 60,
                       20, 140, 20, 60, 20, 90, 20, 20,
                       20, 90]
    var textColor: UIColor = UIColor(red: 0x9F/0xFF, green: 0xF6/0xFF, blue: 0xB3/0xFF, alpha: 1.0)
    var textFont: UIFont = UIFont(name: "Helvetica", size: 11)!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var yIndex: CGFloat = 0
        
        for i in 0...25 {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            label.translatesAutoresizingMaskIntoConstraints = false
            label.sizeToFit()
            label.numberOfLines = 0
            label.lineBreakMode = NSLineBreakMode.ByWordWrapping
            label.text = stringTable[i]
            label.font = textFont
            label.textColor = textColor
            label.backgroundColor = UIColor.clearColor()
            if (i % 2) == 0 {
                label.textAlignment = NSTextAlignment.Center
            } else {
                label.textAlignment = NSTextAlignment.Left
            }
            
            contentView.addSubview(label)
            let widthConstraint = NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: label, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
            let xConstraint = NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: label, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
            let topConstraint = NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal, toItem: label, attribute: NSLayoutAttribute.Top,
                multiplier: 1, constant: -yIndex)
            contentView.addConstraints([widthConstraint, xConstraint, topConstraint])
            
            yIndex += CGFloat(stringSizes[i])
        }
    }
}