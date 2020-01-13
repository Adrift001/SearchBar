//
//  NextViewController.swift
//  SearchBar
//
//  Created by Adrift on 16/7/22.
//  Copyright © 2016年 kuaixiaohulian. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(nextPage))
    }
    
    @objc func nextPage() {
        let vc = Next2ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
