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
    var barImageView: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        barImageView = navigationController?.navigationBar.subviews.first
        navigationController?.navigationBar.translucent = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "naviBGImage"), forBarMetrics: UIBarMetrics.Default)
        navigationController?.navigationBar.shadowImage = UIImage()
        searchBar.delegate = self
        let width = view.frame.size.width
        searchBar.frame = CGRectMake(0, 0, width, 30)
        navigationItem.titleView = searchBar
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.allowsSelection = true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.resignFirstResponder()
        view.endEditing(true)
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = "第\(indexPath.row)行"
        return cell
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        if 0 <= offset && offset <= 100 {
            navigationController?.navigationBar.alpha = offset / 100
        }else if(offset > 100){
            navigationController?.navigationBar.alpha = 1
        }
    }
}

extension TableViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        let vc = NextViewController()
        vc.view.backgroundColor = UIColor.redColor()
        navigationController?.pushViewController(vc, animated: true)
        return false
    }
}
