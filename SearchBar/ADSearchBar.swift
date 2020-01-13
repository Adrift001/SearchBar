//
//  ADSearchBar.swift
//  SearchBar
//
//  Created by Adrift on 16/7/22.
//  Copyright © 2016年 kuaixiaohulian. All rights reserved.
//

import UIKit

class ADSearchBar: UITextField {

    static func searchBar() -> ADSearchBar{
        return ADSearchBar()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = UIFont.systemFont(ofSize: 15)
        placeholder = "搜索商品/供应商"
        clearsOnBeginEditing = true
        clearButtonMode = UITextField.ViewMode.always
        
        let image = UIImage(named: "searchbar_textfield_search_icon")
        let searchIcon = UIImageView(image: image)
        searchIcon.frame.size.width = 30
        searchIcon.frame.size.height = 30
        searchIcon.contentMode = UIView.ContentMode.center
        leftView = searchIcon
        leftViewMode = UITextField.ViewMode.always
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
