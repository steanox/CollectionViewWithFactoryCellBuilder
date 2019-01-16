//
//  CellBuilderHelper.swift
//  CollectionViewFactoryCell
//
//  Created by octavianus on 17/01/19.
//  Copyright © 2019 octavianus. All rights reserved.
//

import UIKit


class CellViewBuilder{
    
    public func buildBottomBox(with title: String,amount: Int,for container: UIView){
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        container.addSubview(box)
        NSLayoutConstraint.activate([
            box.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            box.rightAnchor.constraint(equalTo: container.rightAnchor),
            box.leftAnchor.constraint(equalTo: container.leftAnchor),
            box.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.3)
            ])
        
        
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = title
        textLabel.textAlignment = .center
        box.addSubview(textLabel)
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: box.centerXAnchor),
            textLabel.heightAnchor.constraint(equalTo: box.heightAnchor, multiplier: 0.4),
            textLabel.topAnchor.constraint(equalTo: box.topAnchor, constant: 10),
            textLabel.widthAnchor.constraint(equalTo: box.widthAnchor)
            ])
        
        let amountLabel = UILabel()
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        amountLabel.text = "Rp. \(amount)"
        box.addSubview(amountLabel)
        NSLayoutConstraint.activate([
            amountLabel.centerXAnchor.constraint(equalTo: box.centerXAnchor),
            amountLabel.heightAnchor.constraint(equalTo: box.heightAnchor, multiplier: 0.6),
            amountLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10),
            amountLabel.widthAnchor.constraint(equalTo: box.widthAnchor)
            ])
    }
    
    public func buildPaymentBox(with amount: Int,for container: UIView){
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        container.addSubview(box)
        NSLayoutConstraint.activate([
            box.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.5),
            box.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.3),
            box.rightAnchor.constraint(equalTo: container.rightAnchor),
            box.centerYAnchor.constraint(equalTo: container.centerYAnchor)
            ])
    }
    
    public func buildTopUpBox(with amount: Int,for container: UIView){
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        container.addSubview(box)
        NSLayoutConstraint.activate([
            box.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.5),
            box.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.3),
            box.leftAnchor.constraint(equalTo: container.leftAnchor),
            box.centerYAnchor.constraint(equalTo: container.centerYAnchor)
            ])
    }
    
    public func buildTopBox(with title: String,amount:Int,for container: UIView){
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        container.addSubview(box)
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: container.topAnchor),
            box.rightAnchor.constraint(equalTo: container.rightAnchor),
            box.leftAnchor.constraint(equalTo: container.leftAnchor),
            box.heightAnchor.constraint(equalTo: container.heightAnchor,multiplier: 0.3)
            ])
    }
    
}
