//
//  ViewController.swift
//  TaskTableView
//
//  Created by Sierra 4 on 08/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController{
    
   @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblCartValue: UILabel!
    var arrayIndex = 0
    var counter = 0
    let arrayOfProductCategory = ["Flour & Grains" , "Rice" , "Pulses" , "Flour & Grains"]
    

    let arrayOfCellData = [
        [cellData( productName : "Aashirwad" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "https://n4.sdlcdn.com/imgs/a/t/5/Aashirvaad-Whole-Wheat-Atta-5-SDL832835498-1-565aa.jpg")!),
         cellData( productName : "Aashi" , productQuantity : "92 kg" , productPrice : "$10" , productImage :URL (string: "http://www.eztrolley.com/product_image/270242_2-aashirvaad-atta-superior-sharbati.jpg")!),cellData( productName : "Aashirwad" , productQuantity : "1 kg" , productPrice : "$132" , productImage :URL (string: "https://n4.sdlcdn.com/imgs/a/t/5/Aashirvaad-Whole-Wheat-Atta-5-SDL832835498-1-565aa.jpg")!),cellData( productName : "Aashirwad" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://www.eztrolley.com/product_image/270242_2-aashirvaad-atta-superior-sharbati.jpg")!)],
        [cellData( productName : "Basmati" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://image3.mouthshut.com/images/ImagesR/2016/3/India-Gate-Basmati-Rice-925793861-2549703-1.jpg")!),cellData( productName : "Solid Basmati" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://www.aapkabazzar.com/media/catalog/product/cache/1/image/d2b379e95638120bdbce33ffa36d0292/i/n/india-gate-basmati-rice-dubar-1-kg-packet.jpg")!),cellData( productName : "Liquid Basmati" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "https://n4.sdlcdn.com/imgs/a/t/5/Aashirvaad-Whole-Wheat-Atta-5-SDL832835498-1-565aa.jpg")!),cellData( productName : "Gas Basmati" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://moderngrocers.com/images/PS00074/fest.jpg")!)],
        [cellData( productName : "Yellow" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://admin.bikajionline.com/Images/1/5/13/95_61002201541275.png")!),cellData( productName : "Black" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://www.jumbogrocery.com/api/upload/359Aro%20Masoor%20Black%20Maossor.jpg")!),cellData( productName : "Green" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://www.jumbogrocery.com/api/upload/711Aro%20Fiesta%20Moong%20dal%20Dhuli%2030%20kg1.png")!),cellData( productName : "Mix Pulses" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://aapkarashan.com/media/catalog/product/cache/1/thumbnail/600x/17f82f742ffe127f42dca9de82fb58b1/m/i/mix_pulses_copy.jpg")!)],
        [cellData( productName : "Aashirwad" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "https://n4.sdlcdn.com/imgs/a/t/5/Aashirvaad-Whole-Wheat-Atta-5-SDL832835498-1-565aa.jpg")!),
         cellData( productName : "Aashirwad Premium" , productQuantity : "92 kg" , productPrice : "$10" , productImage :URL (string: "http://www.eztrolley.com/product_image/270242_2-aashirvaad-atta-superior-sharbati.jpg")!),cellData( productName : "Aashirwad" , productQuantity : "1 kg" , productPrice : "$132" , productImage :URL (string: "https://n4.sdlcdn.com/imgs/a/t/5/Aashirvaad-Whole-Wheat-Atta-5-SDL832835498-1-565aa.jpg")!),cellData( productName : "Aashirwad Sented" , productQuantity : "1 kg" , productPrice : "$100" , productImage :URL (string: "http://www.eztrolley.com/product_image/270242_2-aashirvaad-atta-superior-sharbati.jpg")!)]]

    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.delegate = self
       tableView.dataSource = self
        
    lblCartValue.text = "\(mainInstance.count)"
    }
}

//MARK: - TableViewDataDources/Delegates
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData[arrayIndex].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cell.data = arrayOfCellData[arrayIndex][indexPath.row]
            return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        counter = counter+1
        lblCartValue.text = "\(counter)"
    }
  /*  func  tableView(_ tableView: UITableView, didDeselectRowAt indexPath: Inde xPath) {
        counter = counter-1
        lblCartValue.text = ("\(counter)")
    }*/
}

//MARK: - TableView CollectionView
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
    {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return arrayOfProductCategory.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell : CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
    
        collectionCell.lblCollectionViewCell.text = arrayOfProductCategory[indexPath.row]
        
        if (collectionCell.isSelected) {
             // highlight
        }
        else
        {
            // unhighlight
        }
        
    return collectionCell
    }
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayIndex = indexPath.item
        tableView.reloadData()
    }
    //function for dynamic size
    /*public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: tableView/3, height: tableView/3)
    }*/
    
}

