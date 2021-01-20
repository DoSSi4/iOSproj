//
//  AddViewController.swift
//  lecture3DemoSimpleApp
//
//  Created by Admin on 20.01.2021.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet var textField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.becomeFirstResponder()
        textField.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func saveButton(){
        
    }

   

}
