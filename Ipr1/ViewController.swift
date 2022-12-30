//
//  ViewController.swift
//  Ipr1
//
//  Created by Матвей Маслов on 10.12.22.
//

import Cocoa

class ViewController: NSViewController {
    
    // The text field where the user will enter the radius of the sphere
    @IBOutlet weak var radiusTextField: NSTextField!
    
    // The label where the volume of the sphere will be displayed
    @IBOutlet weak var volumeLabel: NSTextField!
    
    // The action method that will be called when the user clicks the "Calculate" button
    @IBAction func calculateVolume(_ sender: Any) {
        
        // Get the radius of the sphere from the text field
        let radius = Double(radiusTextField.stringValue) ?? 0
        
        if radius == 0 {
            volumeLabel.stringValue = "Ответ не удалось посчитать, исправьте значение радиуса!"
        } else {
            // Calculate the volume of the sphere
            let volume = (4.0 / 3.0) * Double.pi * pow(radius, 3)

            // Display the volume in the volume label
            volumeLabel.stringValue = "Ответ: \(volume)"
        }
    }
}

