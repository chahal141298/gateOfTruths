//
//  EditProfileVC.swift
//  GateOfTruths
//
//  Created by Ashish Chahal on 26/02/22.
//

import UIKit

class EditProfileVC: UIViewController {

    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet var viewCollection: [UIView]!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...viewCollection.count-1{
            viewCollection[i].layer.cornerRadius = 10
            viewCollection[i].layer.borderWidth = 1
            viewCollection[i].layer.borderColor = UIColor.lightGray.cgColor
        }
        submitBtn.layer.cornerRadius = 25
        
    }
    

    @IBAction func backTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func submitTapped(_ sender: Any) {
        let alert = UIAlertController.init(title: "Profile", message: "Profile Updated!!!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (ok) in
            self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
