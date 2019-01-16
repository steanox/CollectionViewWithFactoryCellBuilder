//
//  ViewController.swift
//  CollectionViewFactoryCell
//
//  Created by octavianus on 16/01/19.
//  Copyright © 2019 octavianus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var factoryCollectionView: UICollectionView!
    
    var menuOptions: [[CellOptions]] = [
        [   //Menu 1
            .bottomBox("Payment",50000),
            .topBox("hello", 3440)
        ],
        [   //Menu 2
            .topUpBox(40000),
            .topBox("Top Up",35000),
            .bottomBox("Deposit",34000),
            .paymentBox(35000)
        ],
        [   //Menu 3
            .paymentBox(15000),
            .bottomBox("Enroll",20000)
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    private func setupCollectionView(){
        
        func setupCollectionViewLayout()-> UICollectionViewFlowLayout{
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.itemSize = self.view.bounds.size
            layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            layout.minimumLineSpacing = 5
            return layout
        }
        
        factoryCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: setupCollectionViewLayout())
        factoryCollectionView?.register(FactoryCollectionCell.self, forCellWithReuseIdentifier: "factoryCell")
        factoryCollectionView?.delegate = self
        factoryCollectionView?.dataSource = self
        factoryCollectionView?.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(factoryCollectionView)
  
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NSLayoutConstraint.activate([
            factoryCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            factoryCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            factoryCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            factoryCollectionView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "factoryCell", for: indexPath) as! FactoryCollectionCell
        
        cell.cellMenu = menuOptions[indexPath.row]
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}



