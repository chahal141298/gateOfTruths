//
//  LoginVC.swift
//  GateOfTruths
//
//  Created by Apple on 04/02/22.
//

import UIKit

class LoginVC: UIViewController {


    @IBOutlet weak var numberView: UIView!
    @IBOutlet weak var numberfillView: UIView!
    
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var btnOutlet: UIButton!
    @IBOutlet weak var numberText: UITextField!
    
    var key = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if key == "S"{
            btnOutlet.setTitle("SIGNUP", for: .normal)
            titleName.text = "Signup"
        }else{
            btnOutlet.setTitle("LOGIN", for: .normal)
            titleName.text = "Login"
        }
        
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func countrySelector(_ sender: Any) {
    
    }
    
  
    @IBAction func loginTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OTPVC") as! OTPVC
         self.navigationController?.pushViewController(vc, animated: true)
    }
    
  

}
