//
//  ViewController.swift
//  Demo
//
//  Created by wangyongzhen sam on 2017/7/10.
//  Copyright © 2017年 samPersonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        
    }

    private func setupSubviews() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let str = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: str)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: str)
        }
        cell?.textLabel?.text = "1234"
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

