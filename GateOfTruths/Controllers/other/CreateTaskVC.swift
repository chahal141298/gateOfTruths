//
//  CreateTaskVC.swift
//  GateOfTruths
//
//  Created by Apple on 05/02/22.
//

import UIKit

class CreateTaskVC: UIViewController,UITextFieldDelegate,UITextViewDelegate {

    @IBOutlet weak var addFile: UIView!
    @IBOutlet weak var addTask: UIView!
    @IBOutlet weak var endTime: UITextField!
    @IBOutlet var textViews: [UIView]!
    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var startTime: UITextField!
    
    @IBOutlet  var descriprion: UITextView!
    @IBOutlet weak var createBtn: UIButton!
    
    var status = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriprion.text = "Type here...."
        descriprion.textColor = UIColor.lightGray
        descriprion.delegate = self
        endTime.delegate = self
        startTime.delegate = self
        for i in 0...textViews.count-1{
            textViews[i].layer.cornerRadius = 10
            textViews[i].layer.borderColor = UIColor.gray.cgColor
            textViews[i].layer.borderWidth = 1
        }
        
        if status == "1"{
            createBtn.setTitle("Create", for: .normal)
        }else{
            createBtn.setTitle("Save", for: .normal)
        }
        addFile.layer.cornerRadius = 10
        addFile.layer.borderColor = UIColor(named: "background")?.cgColor
        addFile.layer.borderWidth = 1
        
        addTask.layer.cornerRadius = 10
        addTask.layer.borderColor = UIColor(named: "background")?.cgColor
        addTask.layer.borderWidth = 1
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if descriprion.textColor == UIColor.lightGray {
            descriprion.text = nil
            descriprion.textColor = UIColor.black
        }
        
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if descriprion.text.isEmpty {
            descriprion.text = "Type here...."
            descriprion.textColor = UIColor.lightGray
        }
    }
  // MARK: - BUTTONS
    
    @IBAction func addAddress(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddressVC") as! AddressVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func addFileTapped(_ sender: UIButton){
        let alert = UIAlertController.init(title: "GOT", message: "Functionality under development", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func createTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func cancelTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == startTime{
            opendatepicker(textfiled: startTime)
        }else if textField == endTime{
            opendatepicker(textfiled: endTime)
        }
}
    
    
}

extension CreateTaskVC{

    func opendatepicker(textfiled : UITextField){
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .time
        datepicker.preferredDatePickerStyle = .wheels

        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let cancelBtn = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cnclBtnclick) )
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBtnclick) )

        let flexiblebtn = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil )

        toolbar.setItems([cancelBtn,flexiblebtn,done], animated: false)
        textfiled.inputAccessoryView = toolbar
        textfiled.inputView = datepicker

    }

    @objc
    func cnclBtnclick(){
        endTime.resignFirstResponder()
        startTime.resignFirstResponder()
        print("cancelTapped")
    }

    @objc
    func doneBtnclick(){
        endTime.resignFirstResponder()
        startTime.resignFirstResponder()
        print("hellloooo")
        if let datePicker = self.startTime.inputView as? UIDatePicker{
            datePicker.datePickerMode = .time
            let dateformatter  = DateFormatter()
            dateformatter.timeStyle = .short
            startTime.text = dateformatter.string(from: datePicker.date)
        }
         if let datePicker = self.endTime.inputView as? UIDatePicker{
            datePicker.datePickerMode = .time
            let dateformatter  = DateFormatter()
            dateformatter.timeStyle = .short
            endTime.text = dateformatter.string(from: datePicker.date)
        }
}
}
