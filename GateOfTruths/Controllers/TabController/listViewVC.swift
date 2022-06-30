//
//  listViewVC.swift
//  GateOfTruths
//
//  Created by Apple on 04/02/22.
//

import UIKit

class listViewVC: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var allLabel: UILabel!
    @IBOutlet weak var listTable: UITableView!{
        didSet{
            listTable.tableFooterView = UIView(frame: .zero)
        }
    }
    var selectedIndex : Int? = nil
    var count = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.isHidden = true
        count = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func createNewTapped(_ sender: UIButton){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateTaskVC") as! CreateTaskVC
        vc.status = "1"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onTapMyTasks(_ sender: Any) {
        count = false
        allLabel.isHidden = true
        myLabel.isHidden = false
        listTable.reloadData()
    }
    
    @IBAction func onTapAlltasks(_ sender: Any) {
        count = true
        allLabel.isHidden = false
        myLabel.isHidden = true
        listTable.reloadData()
    }
    
    @IBAction func editTapped(_ sender: UIButton){
        selectedIndex = sender.tag
         let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateTaskVC") as! CreateTaskVC
        vc.status = "0"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func openTapped(_ sender: UIButton){
        selectedIndex = sender.tag
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewTask") as! ViewTask
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension listViewVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTable.dequeueReusableCell(withIdentifier: "cell") as! ListTableCell
        selectedIndex = indexPath.row
        if count == true{
            cell.editBtn.isHidden = true
            cell.openBtn.isHidden = true
        }else{
            cell.editBtn.isHidden = false
            cell.openBtn.isHidden = false
        }
        cell.editBtn.tag = indexPath.row
        cell.openBtn.tag = indexPath.row
        return cell
    }
    
    
}
