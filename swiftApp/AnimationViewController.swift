//
//  AnimationViewController.swift
//  swiftApp
//
//  Created by HXjiang on 16/6/28.
//  Copyright © 2016年 蒋林. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("viewDidLoad")
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.createbtn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    func createbtn() -> Void {
    
        let btn:UIButton = UIButton.init(frame: CGRectMake(0, 0, 100, 50))
        btn.center = self.view.center
        
        btn.setTitle("dimiss", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
//        btn.addTarget(self, action:#selector(AnimationViewController.btnAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        btn.addTarget(self, action: #selector(btnAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn)
    
    }
    
    
    func btnAction (button: UIButton) -> Void {
        
        self .dismissViewControllerAnimated(true) { 
            
            print("i am back")
        }
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
