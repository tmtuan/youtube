//
//  ViewController.swift
//  Youtube
//
//  Created by Tran Minh Tuan on 7/2/17.
//  Copyright © 2017 Tran Minh Tuan. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Home"
        collectionView?.backgroundColor = UIColor.white
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    
    }

    // MARK: - UICollectionView methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        
        return cell
    }
}

