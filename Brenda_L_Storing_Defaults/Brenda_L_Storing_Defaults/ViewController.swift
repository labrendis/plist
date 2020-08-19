//
//  ViewController.swift
//  Brenda_L_Storing_Defaults
//
//  Created by Brenda Leyva on 8/18/20.
//  Copyright © 2020 Brenda Leyva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySaveButton(_ sender: Any) {
    
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Test")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slides")
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
    }
    
    
    @IBOutlet var mySerialNumber: UITextField!
    
    
    
    @IBOutlet var mySlider: UISlider!
    
    
    @IBOutlet var mySwitch: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

