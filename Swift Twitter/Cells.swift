//
//  Cells.swift
//  Swift Twitter
//
//  Created by Clinton Otten on 02/01/2017.
//  Copyright © 2017 Clinton Otten. All rights reserved.
//

import LBTAComponents

class UserFooter : DatasourceCell {
    override func setupViews() {
        backgroundColor = .green
    }
}

class UserHeader : DatasourceCell {
    override func setupViews() {
        backgroundColor = .yellow
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let nameLabel : UILabel = {
        let label = UILabel()
        //label.text = "Testing"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .red
        
        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
