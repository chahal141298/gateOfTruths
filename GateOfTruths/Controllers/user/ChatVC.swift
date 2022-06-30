//
//  ChatVC.swift
//  GateOfTruths
//
//  Created by Apple on 05/02/22.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var messageText: UITextField!
    @IBOutlet weak var chatTable: UITableView!{
        didSet{
            chatTable.tableFooterView = UIView(frame: .zero)
        }
    }
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    let arr1 = ["Hello","What's up", "I am Carla Willis","I am Jack Rich","Where do you live","I live in New York"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        messageView.layer.cornerRadius = 12
        name.text = "Dakota Johnson"
        
    }
    
    @IBAction func cameraTapped(_ sender: Any) {
    }
    @IBAction func sendTapped(_ sender: Any) {
    }
    @IBAction func backTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

extension ChatVC: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = chatTable.dequeueReusableCell(withIdentifier: "chatSend") as! ChatSendCell
//        if indexPath.row % 2 == 0{
            let cell2 = chatTable.dequeueReusableCell(withIdentifier: "cell") as! ChatReceiveCell
            return cell2
//        }else{
//            let cell = chatTable.dequeueReusableCell(withIdentifier: "cellSend") as! ChatSendCell
//            return cell
    
        
        
    }
    
    
}
