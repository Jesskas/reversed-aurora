//
//  AppDelegate.swift
//  auroralert2
//
//  Created by Jessica Kasson on 11/6/16.
//  Copyright © 2016 Jessica Kasson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var currentStartupDateTime: String?
    var oneDayFromToday: String?
    var twoDaysFromToday: String?
    var threeDaysFromToday: String?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        // Added to keep the white status bar given the black background.
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent;
        
        // Save local date time and next three days for later
        let formatter = NSDateFormatter()
        formatter.dateFormat = "M/d/yyyy K:mm a"
        currentStartupDateTime = formatter.stringFromDate(NSDate())
        
        let calendar = NSCalendar.currentCalendar()
        let dayComponent = NSDateComponents()
        formatter.dateFormat = "MMM d"
        
        dayComponent.day = 1
        let add1day: NSDate = calendar.dateByAddingComponents(dayComponent, toDate: NSDate(), options: NSCalendarOptions())!
        oneDayFromToday = formatter.stringFromDate(add1day)
        
        dayComponent.day = 2
        let add2day: NSDate = calendar.dateByAddingComponents(dayComponent, toDate: NSDate(), options: NSCalendarOptions())!
        twoDaysFromToday = formatter.stringFromDate(add2day)
        
        dayComponent.day = 3
        let add3day: NSDate = calendar.dateByAddingComponents(dayComponent, toDate: NSDate(), options: NSCalendarOptions())!
        threeDaysFromToday = formatter.stringFromDate(add3day)
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    
    func getLastUpdated() -> String {
        return currentStartupDateTime!
    }
    
    func get1dayFromToday() -> String {
        return oneDayFromToday!
    }
    
    func get2daysFromToday() -> String {
        return twoDaysFromToday!
    }
    
    func get3daysFromToday() -> String {
        return threeDaysFromToday!
    }

}

