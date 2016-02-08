//
//  ChatTableViewController.swift
//  ChatBubbleUI
//
//  Created by huchunbo on 16/2/8.
//  Copyright © 2016年 Bijiabo. All rights reserved.
//

import UIKit

class ChatTableViewController: UITableViewController {

    var data: [String] = [
        "Here's To The Crazy Ones.",
        "The misfits.",
        "The rebels.",
        "The trouble-makers.",
        "The round pegs in thesquare holes.",
        "The ones who see things differently.",
        "They're not fond of rules, and they have no respect for the status-quo.",
        "You can quote them, disagree with them, glorify, or vilify them.",
        "About the only thing you can't do is ignore them.",
        "Because they change things.",
        "They push the human race forward.",
        "And while some may see them as the crazy ones, we see genius.",
        "Because the people who are crazy enough to think they can change the world - are the ones who DO!",
        "Here's To The Crazy Ones. The misfits. The rebels. The trouble-makers. The round pegs in the square holes. The ones who see things differently. They're not fond of rules, and they have no respect for the status-quo. You can quote them, disagree with them, glorify, or vilify them. About the only thing you can't do is ignore them. Because they change things. They push the human race forward. And while some may see them as the crazy ones, we see genius.Because the people who are crazy enough to think they can change the world - are the ones who DO!",
        "Here's To The Crazy Ones.",
        "The misfits.",
        "The rebels.",
        "The trouble-makers.",
        "The round pegs in thesquare holes.",
        "The ones who see things differently.",
        "They're not fond of rules, and they have no respect for the status-quo.",
        "You can quote them, disagree with them, glorify, or vilify them.",
        "About the only thing you can't do is ignore them.",
        "Because they change things.",
        "They push the human race forward.",
        "And while some may see them as the crazy ones, we see genius."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        clearsSelectionOnViewWillAppear = true
        
        tableView.separatorStyle = .None
        tableView.estimatedRowHeight = 48.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("rightCell", forIndexPath: indexPath) as! RightPostTableViewCell
            cell.content = data[indexPath.row]
            
            if indexPath.row + 2 == data.count {
                cell.sending = true
            } else {
                cell.sending = false
            }
            
            if indexPath.row + 4 == data.count {
                cell.sendError = true
            } else {
                cell.sendError = false
            }
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("leftCell", forIndexPath: indexPath) as! LeftPostTableViewCell
            cell.content = data[indexPath.row]
            
            return cell
        }
        
        
    }
    
}
