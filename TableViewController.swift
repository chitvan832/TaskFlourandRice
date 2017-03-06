//
//  TableViewController.swift
//  TaskTableView
//
//  Created by Sierra 4 on 08/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//
/*
import UIKit


class TableViewController: UITableViewController {

    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell : 1 , lblProductName : "Aashirwad" , lblProductQuantity : "1 kg" , lblProductPrice : "$100" , imgProduct : #imageLiteral(resourceName: "logo1")),
                           cellData(cell : 2 , lblProductName : "Aashi" , lblProductQuantity : "10 kg" , lblProductPrice : "$10" , imgProduct : #imageLiteral(resourceName: "unnamed")) ]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1 {
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.imgProduct.image = self.arrayOfCellData[indexPath.row].imgProduct
            cell.lblProductName.text = self.arrayOfCellData[indexPath.row].lblProductName
            cell.lblProductPrice.text = self.arrayOfCellData[indexPath.row].lblProductPrice
            return cell
        }
        else {
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.imgProduct.image = self.arrayOfCellData[indexPath.row].imgProduct
            cell.lblProductName.text = self.arrayOfCellData[indexPath.row].lblProductName
            cell.lblProductPrice.text = self.arrayOfCellData[indexPath.row].lblProductPrice
            return cell
        }
    }
}*/
