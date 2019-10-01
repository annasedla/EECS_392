//
//  ViewController.swift
//  BMICaculator
//
//  Created by Jing Li on 1/24/17.
//  Copyright © 2017 CBC.case.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate  {

    
    @IBOutlet weak var heightField: UITextField!{
        didSet{
            heightField.delegate = self
        }
    }
    @IBOutlet weak var weightField: UITextField!{
        didSet{
            weightField.delegate = self
        }
    }
    @IBOutlet weak var BMILabel: UILabel!
    
    
    
    
    
    //BREAKI
    
    //Every property needs a value assigned—either in its declaration  or in the initializer
    //var w = 0.0, h = 0.0, bmi = 0.0
    var w : Double?
    var h : Double?
    var bmi : Double? {
        get {
            if ( w != nil && h != nil){
                return (w! * 703) / (h! * h!)
                
            }else{
                
                return nil
            }
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        if let tmp = textField.text{
            switch (textField){
            case weightField:
                w = Double(tmp)
            case heightField:
                h = Double(tmp)
            default:
                break
            }
            updateUI()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateUI() {
        if let b = bmi {
            //let tmp = String(b)
            let tmp = String(format:"%.1f", b)
            BMILabel.text = "BMI: " + tmp
        }
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        //weightField.resignFirstResponder()
        //heightField.resignFirstResponder()
        self.view.endEditing(true)
        updateUI()
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //weightField.resignFirstResponder()
        //heightField.resignFirstResponder()
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //do it over here, or observe the change of the values
        //heightField.delegate = self
        //weightField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

