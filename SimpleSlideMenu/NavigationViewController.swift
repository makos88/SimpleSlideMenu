//
//  NavigationViewController.swift
//  SimpleSlideMenu
//
//  Created by Kamil Makowski on 24/12/14.
//  Copyright (c) 2014 Kamil Makowski. All rights reserved.
//

import UIKit

class NavigationViewController: UITableViewController {
    
    var menu: [String] = ["firstCell", "secondCell"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let reuseIdentifier = menu[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as UITableViewCell
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.isKindOfClass(SWRevealViewControllerSegue)) {
            var rvcs: SWRevealViewControllerSegue = segue as SWRevealViewControllerSegue
            var rvc:SWRevealViewController = self.revealViewController()
            
            rvcs.performBlock = {(rvc_segue, svc, dvc) in
                var nc:UINavigationController = self.revealViewController().frontViewController as UINavigationController
                nc.setViewControllers([dvc], animated: true)
                self.revealViewController().setFrontViewPosition(FrontViewPositionLeft, animated: true)
            }
        }
    }
}
