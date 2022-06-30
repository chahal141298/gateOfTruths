//
//  FileViewVC.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit

class FileViewVC: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var desc: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func backImage(_ sender: UIButton){
        print("hello")
    }
    @IBAction func nextImage(_ sender: UIButton){
        print("hellooo")
        
    }
    
    
}
