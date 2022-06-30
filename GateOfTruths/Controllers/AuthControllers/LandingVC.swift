//
//  ViewController.swift
//  GateOfTruths
//
//  Created by Apple on 03/02/22.
//

import UIKit
import AnimatedCollectionViewLayout

class LandingVC: UIViewController,UIScrollViewDelegate {
    
    
    
    @IBOutlet weak var landingCollection: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    
    var count = 0
    let layout = AnimatedCollectionViewLayout()
    
    let imgarray = [UIImage(named: "4"),UIImage(named: "2"),UIImage(named: "6")]
    let matchArray = ["Algorithms","Matches","Premium"]
    let detailArray = ["Users going through a vetting process to ensure you never match with bots","We match you with people that have a large array of similar interests", "Sign up today and enjoy the first month of premium benifits on us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        landingCollection.reloadData()
       
    }
    
    @IBAction func skipTapped(_ sender: UIButton){
       let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func nextTapped(_ sender: UIButton){
        let visibleItems: NSArray = self.landingCollection.indexPathsForVisibleItems as NSArray
            let currentItem: IndexPath = visibleItems.object(at: 0) as! IndexPath
            let nextItem: IndexPath = IndexPath(item: currentItem.item + 1, section: 0)
                   if nextItem.row < imgarray.count {
                    
                self.landingCollection.scrollToItem(at: nextItem, at: .left, animated: true)
                    nextBtn.isHidden = false
                    if nextItem.row == 2 {
                     skipBtn.setTitle("GOT IT", for: .normal)
                     nextBtn.isHidden = true
                    }

                   }
}
}

class LandingCollCell: UICollectionViewCell{
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var matchLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        cellImage.layer.cornerRadius = 20
        cellImage.layer.shadowColor = UIColor.gray.cgColor
        cellImage.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cellImage.layer.shadowRadius = 4
        cellImage.layer.shadowOpacity = 4
    }
}

extension LandingVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = landingCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LandingCollCell
        self.count = indexPath.item
        print(indexPath.item,"sdsadf")
        
        cell.cellImage.image = imgarray[indexPath.item]
        cell.matchLabel.text = matchArray[indexPath.item]
        cell.detailLabel.text = detailArray[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: landingCollection.frame.width, height: landingCollection.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let visibleCells = landingCollection.visibleCells
            visibleCells.forEach({ (cell) in
                if let index = self.landingCollection.indexPath(for: cell) {
                    if index.row == 2{
                        skipBtn.setTitle("GOT IT", for: .normal)
                        nextBtn.isHidden = true
                    }else{
                        skipBtn.setTitle("SKIP", for: .normal)
                        nextBtn.isHidden = false
                    }
                    
                }
            })
        }
}

