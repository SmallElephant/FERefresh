//
//  TestTableViewController.swift
//  FERefresh
//
//  Created by FlyElephant on 2017/7/29.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation
import UIKit


class TestTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.tableView.backgroundColor = UIColor.red
        
        var testView = UIView(frame: CGRect(x: 0, y: -50, width: 375, height: 50))
        testView.backgroundColor = UIColor.blue
        self.tableView.addSubview(testView)
//        self.tableView.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "UITableViewCell")
        }
        
        cell?.textLabel?.text = "UITableViewCell---\(indexPath.row)"
        
        return cell!
    }
    
}
