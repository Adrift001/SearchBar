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
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.orange
        searchBar.delegate = self
        let width = view.frame.size.width
        searchBar.frame = CGRect(x: 0, y: 0, width: width, height: 30)
        navigationItem.titleView = searchBar
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
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
        vc.view.backgroundColor = UIColor.red
        navigationController?.pushViewController(vc, animated: true)
        return false
    }
}

