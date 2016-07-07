//
//  HXNavigationController.swift
//  swiftApp
//
//  Created by HXjiang on 16/6/30.
//  Copyright © 2016年 蒋林. All rights reserved.
//

import UIKit

class HXNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //导航栏buttonItem颜色
        UINavigationBar.appearance().tintColor = UIColor.blackColor()
        //导航栏背景颜色
        let r:CGFloat = 220.0;
        let g:CGFloat = 220.0;
        let b:CGFloat = 220.0;
        let a:CGFloat = 1;
        UINavigationBar.appearance().barTintColor = UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
        //导航栏字体颜色
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.purpleColor()]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
