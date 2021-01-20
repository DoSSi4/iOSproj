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
        let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "yyyy-MM-dd"
          let dateTxt =  dateFormatter.string(from: datePicker.date)
           self.view.endEditing(true)
        guard let vc = navigationController?.viewControllers.first as? SecondViewController else { return };            vc.arr.append(ToDoItem(id: +1, title: textField.text, deadLine: dateTxt, inProgress: false))
               navigationController?.popViewController(animated: true)
    }

   

}
