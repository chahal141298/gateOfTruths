//
//  MessageVC.swift
//  GateOfTruths
//
//  Created by Apple on 05/02/22.
//

import UIKit

class MessageVC: UIViewController {
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var messageTable: UITableView!{
        didSet{
            messageTable.tableFooterView = UIView(frame: .zero)
        }
    }
    var key = ""
    
    var imageArr = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3")]
    var messageArr = ["Hello","How are you","What's up","Hello","How are you","What's up","Hello","How are you","What's up","Hello","How are you","What's up","Hello","How are you","What's up"]
    var nameArr = ["Natasha","Jennifer","Dakota Johnson","Natasha","Jennifer","Dakota Johnson","Natasha","Jennifer","Dakota Johnson","Natasha","Jennifer","Dakota Johnson","Natasha","Jennifer","Dakota Johnson"]
    var timeAr = ["10:35","11:54","01:05","10:35","11:54","01:05","10:35","11:54","01:05","10:35","11:54","01:05","10:35","11:54","01:05"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if key == "" {
            backBtn.isHidden = true
        }else{
            backBtn.isHidden = false
        }
    }
    
    @IBAction func backTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
  
}

extension MessageVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messageTable.dequeueReusableCell(withIdentifier: "cell") as! MessageTableCell
//        cell.nameLabel.text = nameArr[indexPath.row]
//        cell.message.text = messageArr[indexPath.row]
        cell.time.text = timeAr[indexPath.row]
//        cell.profilePic.image = imageArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChatVC") as! ChatVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
        
    }
    
}
