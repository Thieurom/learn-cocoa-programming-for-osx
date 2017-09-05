//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Doan Le Thieu on 9/5/17.
//  Copyright © 2017 doanthieu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    var red = 0.5
    var green = 0.5
    var blue = 0.5
    let alpha = 1.0
    
    var color: NSColor {
        return NSColor(calibratedRed: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
    }
    
    class func keyPathsForValuesAffectingColor() -> NSSet {
        return NSSet(array: ["red", "green", "blue"])
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
