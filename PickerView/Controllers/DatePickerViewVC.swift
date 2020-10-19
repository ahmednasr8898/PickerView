//
//  DatePickerViewVC.swift
//  PickerView
//
//  Created by Ahmed Nasr on 10/19/20.
//

import UIKit

class DatePickerViewVC: UIViewController {

    @IBOutlet weak var datePickerTextField: UITextField!
    var datePickerView = UIDatePicker()
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        createDatePickerView()
    }
    
    func createDatePickerView(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(didPressDoneButton))
        
        toolBar.setItems([doneButton], animated: true)
        
        datePickerTextField.inputAccessoryView = toolBar
        datePickerTextField.inputView = datePickerView
        datePickerTextField.placeholder = "selected date"
        datePickerTextField.textAlignment = .center
        datePickerView.datePickerMode = .date
    }
    
    @objc func didPressDoneButton(){
        
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        datePickerTextField.text  = formatter.string(from: datePickerView.date)
        datePickerTextField.endEditing(true)
    }
}
