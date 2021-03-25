//
//  SecondViewController.swift
//  TemperatureConverter
//
//  Created by Anika Nair on 3/8/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var firstEntryTempTextField: UITextField!
    
    @IBOutlet var secondEntryTempTextField: UITextField!
    
    @IBOutlet var CelciusTempLabel: UILabel!
  
    @IBOutlet var KelvinTempLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ConvertTemp(_ sender: Any) {
        
        func CelciusCalulation () {
            result = (result - 32) * 5/9
            CelciusTempLabel.text = String(format:"%.1f°",result)
            }
        
        func kelvinCalulation (){
        output = (output - 32) * (5/9) + 273.15
        KelvinTempLabel.text = String(format:"%.2f K",output)
     }
        
    var result = Double( firstEntryTempTextField.text!)!
        
    CelciusCalulation()

    var output = Double ( secondEntryTempTextField.text!)!
        
        kelvinCalulation()
    
    

    }
     
    
}
