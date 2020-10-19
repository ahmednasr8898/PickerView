//
//  ViewController.swift
//  PickerView
//
//  Created by Ahmed Nasr on 10/19/20.
//

import UIKit

class DefultPickerViewVC: UIViewController {

    @IBOutlet weak var pickerTextField: UITextField!
    var pickerView = UIPickerView()
    
    var data = ["Cairo" , "Giza" , "October" , "NasrCity" , "Haram" , "Mansoura"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerTextField.inputView = pickerView
        pickerTextField.placeholder = "select your address"
        pickerTextField.textAlignment = .center
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
}

extension DefultPickerViewVC: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = data[row]
    }
}

extension DefultPickerViewVC: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

