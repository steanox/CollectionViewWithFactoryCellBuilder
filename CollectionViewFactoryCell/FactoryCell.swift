//
//  FactoryCell.swift
//  CollectionViewFactoryCell
//
//  Created by octavianus on 17/01/19.
//  Copyright © 2019 octavianus. All rights reserved.
//

import UIKit

enum CellOptions{
    case bottomBox(_ title: String,_ total: Int)
    case paymentBox(_ total: Int)
    case topUpBox(_ total: Int)
    case topBox(_ title: String,_ total: Int)
}

class FactoryCollectionCell: UICollectionViewCell{
    let cellBuilder = CellViewBuilder()
    var cellMenu: [CellOptions]?{
        didSet{
            cellMenu?.compactMap { buildCell(for: $0) }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func buildCell(for menu: CellOptions){
        switch menu {
        case .bottomBox(let title,let total):
            cellBuilder.buildBottomBox(with: title, amount: total,for: self)
        case .paymentBox(let amount):
            cellBuilder.buildPaymentBox(with: amount,for: self)
        case .topUpBox(let amount):
            cellBuilder.buildTopUpBox(with: amount,for: self)
        case .topBox(let title, let amount):
            cellBuilder.buildTopBox(with: title, amount: amount,for: self)
        }
    }
}
