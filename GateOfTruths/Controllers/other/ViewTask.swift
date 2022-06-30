//
//  ViewTask.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit

class ViewTask: UIViewController {

    @IBOutlet weak var tableTask: UITableView!
    @IBOutlet weak var fileCollection: UICollectionView!
    @IBOutlet weak var taskName: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet var descriptionText: UILabel!
    @IBOutlet var descView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func chatTapped(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "MessageVC") as! MessageVC
        vc.key = "ViewTask"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func mapViewTapped(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "MapViewwVC") as! MapViewwVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension ViewTask: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableTask.dequeueReusableCell(withIdentifier: "cell") as! TaskTable
        return cell
    }
    
    
}

extension ViewTask:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fileCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: fileCollection.frame.width, height: fileCollection.frame.height )
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "FileViewVC") as! FileViewVC
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
