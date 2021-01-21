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
    var addCallback: ((ToDoItem)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    @IBAction func saveButton(){
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateTxt =  dateFormatter.string(from: datePicker.date)
                   self.view.endEditing(true)
        let Data=ToDoItem(id: 7, title: textField.text, deadLine: dateTxt, inProgress: false)
        addCallback?(Data)
        navigationController?.popViewController(animated: true)
    }

   

}
