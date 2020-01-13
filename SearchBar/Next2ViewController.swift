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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}

extension Next2ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.detailTextLabel?.text = "第\(indexPath.row)行"
        return cell
    }
}
