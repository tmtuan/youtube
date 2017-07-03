//
//  MenuBar.swift
//  Youtube
//
//  Created by Tran Minh Tuan on 7/3/17.
//  Copyright © 2017 Tran Minh Tuan. All rights reserved.
//

import UIKit

class MenuBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.init(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
