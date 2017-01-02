//
//  HomeDataSource.swift
//  Swift Twitter
//
//  Created by Clinton Otten on 02/01/2017.
//  Copyright © 2017 Clinton Otten. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let words = ["Test 1", "Test 2", "Test 3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    
}
