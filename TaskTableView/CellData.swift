//
//  CellData.swift
//  TaskTableView
//
//  Created by Sierra 4 on 08/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation

struct cellData{
    
    
    let lblProductName : String!
    let lblProductQuantity : String!
    let lblProductPrice : String!
    let imgProduct : URL!
    
    init(productName : String? , productQuantity : String? , productPrice : String? , productImage : URL?) {
        self.lblProductName = productName
        self.lblProductQuantity = productQuantity
        self.lblProductPrice = productPrice
        self.imgProduct = productImage
    }
}

