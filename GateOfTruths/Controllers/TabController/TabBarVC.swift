//
//  TabBarVC.swift
//  GateOfTruths
//
//  Created by Apple on 04/02/22.
//

import UIKit

class TabBarVC: UITabBarController {

//  let shared = TabBarVC()
    var count = 1
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 1
        count = 1
        self.tabBar.items![1].isEnabled = false
        
        setupMiddleButton()
    
    }
    func hello(){
        let myTabBarItem1 = (self.tabBar.items?[1])! as UITabBarItem
        myTabBarItem1.image = UIImage(named: "background")
        myTabBarItem1.selectedImage = UIImage(named: "background")
    }
    
    func setupMiddleButton() {
  
         let middleBtn = UIButton(frame: CGRect(x: (self.view.bounds.width / 2)-25, y: -20, width: 50, height: 50))
            btn = middleBtn
            //STYLE THE BUTTON YOUR OWN WAY
//        middleBtn.setImage(UIImage(named: "listView"), for: .normal)
//        let story = UIStoryboard(name: "Main", bundle: nil)
//        let vc = story.instantiateViewController(withIdentifier: "listViewVC") as! listViewVC
//        let vc1 = story.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
//
//        if self.viewControllers?[1] == vc1{
//            middleBtn.setImage(UIImage(named: ""), for: .normal)
//        }else{
        btn.setImage(UIImage(named: "mapView"), for: .normal)
//        }
       
        btn.backgroundColor = UIColor.white
        btn.layer.borderWidth = 0.8
        btn.layer.borderColor = UIColor(named: "middleBtnBorder")?.cgColor
//        btn.layer.shadowColor = UIColor.lightGray.cgColor
//        btn.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
//        btn.layer.shadowRadius = 2
//        btn.layer.shadowOpacity = 5
        btn.layer.cornerRadius = 25
            
            self.tabBar.addSubview(middleBtn)
       
        btn.addTarget(self, action: #selector(self.menuButtonAction), for: .touchUpInside)

        self.view.layoutIfNeeded()
        
        }

        // Menu Button Touch Action
        @objc func menuButtonAction(sender: UIButton) {
            self.selectedIndex = 1
            let story = UIStoryboard(name: "Main", bundle: nil)
            let vc = story.instantiateViewController(withIdentifier: "listViewVC") as! listViewVC
            let vc1 = story.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        
            if count == 1{
                count = 0
                self.viewControllers?[1] = vc
                self.btn.setImage(UIImage(named: "mapView"), for: .normal)
            }else{
                count = 1
                self.viewControllers?[1] = vc1
                self.btn.setImage(UIImage(named: "listView"), for: .normal)
            }
        }
   

}
