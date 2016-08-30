//
//  PhonebookListViewController.swift
//  samplePhonebookApp
//
//  Created by Muneharu Onoue on 2016/08/30.
//  Copyright © 2016年 Muneharu Onoue. All rights reserved.
//

import UIKit

class PhonebookListViewController: UITableViewController {
    var telNo: [(name: String, num: String)] {
        var array = [(name: String, num: String)]()
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        array.append((name:"Mr.AAAAA", num:"03-1234-5678"))
        return array
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK: - Table view data source
extension PhonebookListViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return telNo.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TelCell", forIndexPath: indexPath)
        
        let nameLabel = cell.viewWithTag(1) as? UILabel
        let numLabel = cell.viewWithTag(2) as? UILabel
        
        var name: String?
        name = telNo[indexPath.row].name
        var num: String?
        num = telNo[indexPath.row].num
        
        nameLabel?.text = name ?? ""
        numLabel?.text = num ?? ""
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    }
}
