//
//  MainWindowController.swift
//  ToDo
//
//  Created by Doan Le Thieu on 9/3/17.
//  Copyright © 2017 doanthieu. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDataSource {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    var items = [String]()
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    
    // MARK: - Action methods
    @IBAction func createNewItem(sender: AnyObject) {
        let newItem = textField.stringValue
        
        if !newItem.isEmpty {
            items.append(newItem)
            textField.stringValue = ""
            tableView.reloadData()
        }
    }
    
    @IBAction func updateItem(sender: NSTextField) {
        let selectedRow = tableView.selectedRow
        
        if selectedRow != -1 {
            let updatedItem = sender.stringValue
            
            if updatedItem.isEmpty {
                tableView.reloadData()
            } else {
                items[items.count - selectedRow - 1] = updatedItem
            }
        }
    }
    
    
    // MARK: - NSTableViewDataSource
    func numberOfRows(in tableView: NSTableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return items.reversed()[row]
    }
    
}
