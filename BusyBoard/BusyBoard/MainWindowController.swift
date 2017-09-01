//
//  MainWindowController.swift
//  BusyBoard
//
//  Created by Doan Le Thieu on 9/1/17.
//  Copyright © 2017 doanthieu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var slidingStateTextField: NSTextField!
    @IBOutlet weak var showSliderTickMarksRadioButton: NSButton!
    @IBOutlet weak var hideSliderTickMarksRadioButton: NSButton!
    @IBOutlet weak var checkbox: NSButton!
    @IBOutlet weak var secureMessageTextField: NSTextField!
    @IBOutlet weak var messageTextField: NSTextField!
    
    var currentTickMarkValue = 0.0
    let MAX_OF_TICKMARKS = 10
    
    override var windowNibName: String? {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func updateSlidingState(sender: NSSlider) {
        let tickMarkValue = sender.doubleValue
        
        if tickMarkValue > currentTickMarkValue {
            slidingStateTextField.stringValue = "Slider's going up!"
        } else if tickMarkValue < currentTickMarkValue {
            slidingStateTextField.stringValue = "Slider's going down!"
        } else {
            slidingStateTextField.stringValue = ""
        }
        
        currentTickMarkValue = tickMarkValue
    }
    
    @IBAction func toggleTickMarksPresence(sender: NSButton) {
        if sender.tag == 0 {
            slider.numberOfTickMarks = 0
        } else if sender.tag == 1 {
            slider.numberOfTickMarks = MAX_OF_TICKMARKS
        }
    }
    
    @IBAction func revealSecretMessage(sender: NSButton) {
        messageTextField.stringValue = secureMessageTextField.stringValue
    }
    
    @IBAction func resetAllControls(sender: NSButton) {
        slider.doubleValue = 0.0
        slider.numberOfTickMarks = MAX_OF_TICKMARKS
        slidingStateTextField.stringValue = ""
        showSliderTickMarksRadioButton.state = NSOnState
        hideSliderTickMarksRadioButton.state = NSOffState
        checkbox.state = NSOnState
        secureMessageTextField.stringValue = ""
        secureMessageTextField.window!.makeFirstResponder(nil)
        messageTextField.stringValue = ""
    }
}
