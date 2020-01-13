//
//  TableViewController.swift
//  SearchBar
//
//  Created by Adrift on 16/7/22.
//  Copyright © 2016年 kuaixiaohulian. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    let searchBar = ADSearchBar.searchBar()
    private var alphaBgView:UIView!
    var barImageView: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "naviBGImage"), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        barImageView = navigationController?.navigationBar.subviews.first
        alphaBgView = UIView()
        alphaBgView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.size.width, height: 64)
        alphaBgView.backgroundColor = UIColor.orange
        alphaBgView.alpha = 0
        barImageView?.addSubview(alphaBgView)
//        navigationController?.navigationBar.insertSubview(alphaBgView, aboveSubview: barImageView!)
        
        searchBar.delegate = self
        let width = view.frame.size.width
        searchBar.frame = CGRect(x: 0, y: 0, width: width, height: 30)
        navigationItem.titleView = searchBar
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.allowsSelection = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        searchBar.resignFirstResponder()
        view.endEditing(true)
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "第\(indexPath.row)行"
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        if 0 <= offset && offset <= 100 {
            alphaBgView.alpha = offset / 100
        }else if(offset > 100){
            alphaBgView.alpha = 1
        }
    }
}

extension TableViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let vc = NextViewController()
        vc.view.backgroundColor = UIColor.red
        navigationController?.pushViewController(vc, animated: true)
        return false
    }
}
