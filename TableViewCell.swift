//
//  TableViewCell.swift
//  TaskTableView
//
//  Created by Sierra 4 on 08/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Kingfisher
class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductQuantity: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var btnProductDetail: UIButton!
    @IBOutlet weak var btnAddToCart: UIButton!
   
    var cartCount = 0
    
    var data : cellData?
    {
        didSet{
           updateUI()
        }
    }
    
    fileprivate func updateUI(){
        lblProductName.text = data?.lblProductName
        imgProduct.kf.setImage(with: data?.imgProduct)
        lblProductQuantity.text = data?.lblProductQuantity
        lblProductPrice.text = data?.lblProductPrice
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func btnAddtoCart(_ sender: UIButton) {
        cartCount = cartCount + 1
        
    }
    
        
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
