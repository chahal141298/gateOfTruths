//
//  SignUpVC.swift
//  GateOfTruths
//
//  Created by Apple on 04/02/22.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var btns: [UIButton]!
    
    @IBOutlet weak var orView: UIView!
    @IBOutlet weak var labelTerm: UILabel!
    
    var checked = ""
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("helloosdivdsbv")
//        labelTerm.font = UIFont.boldSystemFont(ofSize: 16)
        orView.layer.borderWidth = 0.8
        orView.layer.borderColor = UIColor.black.cgColor
        for i in 0...btns.count-1{
            btns[i].layer.cornerRadius = 30
        }
        btns[1].layer.borderWidth = 1
        btns[1].layer.borderColor = UIColor(named: "buttonColor")?.cgColor
    }
    
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        vc.key = "S"
         self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func loginTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
         self.navigationController?.pushViewController(vc, animated: true)
    }
}



extension UITapGestureRecognizer{
    
}
