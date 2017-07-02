//
//  ViewController.swift
//  Youtube
//
//  Created by Tran Minh Tuan on 7/2/17.
//  Copyright © 2017 Tran Minh Tuan. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Home"
        collectionView?.backgroundColor = UIColor.white
        
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
    
    }

    // MARK: - UICollectionView methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}

class VideoCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func setupViews() {
        backgroundColor = UIColor.gray
        addSubview(thumbnailImageView)
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": thumbnailImageView]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": thumbnailImageView]))
        
        thumbnailImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
