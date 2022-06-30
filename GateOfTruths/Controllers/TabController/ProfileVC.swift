//
//  ProfileVC.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var emaillabel: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var proImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        proImage.layer.borderColor = UIColor.black.cgColor
        proImage.layer.borderWidth = 1
        
    }
    
    @IBAction func editTapped(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
        self.navigationController?.pushViewController(vc, animated: false)
    }

}
