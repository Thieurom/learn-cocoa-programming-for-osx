//
//  AppDelegate.swift
//  RGBWell
//
//  Created by Doan Le Thieu on 9/5/17.
//  Copyright © 2017 doanthieu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindowController: MainWindowController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let mainWindowController = MainWindowController()
        
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

