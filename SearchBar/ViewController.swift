//
//  ViewController.swift
//  SearchBar
//
//  Created by Adrift on 16/7/22.
//  Copyright © 2016年 kuaixiaohulian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let searchBar = ADSearchBar.searchBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.translucent = false
        navigationController?.navigationBar.barTintColor = UIColor.orangeColor()
        searchBar.delegate = self
        let width = view.frame.size.width
        searchBar.frame = CGRectMake(0, 0, width, 30)
        navigationItem.titleView = searchBar
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.resignFirstResponder()
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        let vc = NextViewController()
        vc.view.backgroundColor = UIColor.redColor()
        navigationController?.pushViewController(vc, animated: true)
        return false
    }
}

