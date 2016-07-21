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
        
        let btnarr:NSArray = ["qq", "ww", "ee", "rr", "tt"]
        
        
        for index in btnarr {
            print(index)
            
            let btn = UIButton(frame: CGRect(x: 100, y: 100+btnarr.indexOfObject(index)*60, width: 100, height: 50))
//            let obj:String = index as! String
            
            btn.tag = btnarr.indexOfObject(index)
            btn.backgroundColor = UIColor.redColor()
            btn.setTitle(index as? String, forState: UIControlState.Normal)
            btn.addTarget(self, action: #selector(btnsAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            objc_setAssociatedObject(btn, "ddd", "bindObj", objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            self.view.addSubview(btn)
            
        }
    }

    func btnsAction(btn: UIButton) -> Void {
       
        /*
        let bind = objc_getAssociatedObject(btn, "ddd") as! String
        
        print(bind)
         */
        
        print(btn.tag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - btn

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
