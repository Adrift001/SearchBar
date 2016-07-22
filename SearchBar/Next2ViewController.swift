//
//  Next2ViewController.swift
//  SearchBar
//
//  Created by Adrift on 16/7/23.
//  Copyright © 2016年 kuaixiaohulian. All rights reserved.
//

import UIKit

class Next2ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        navigationController?.popViewControllerAnimated(true)
    }
}

extension Next2ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.detailTextLabel?.text = "第\(indexPath.row)行"
        return cell
    }
}
