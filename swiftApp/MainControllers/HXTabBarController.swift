//
//  HXTabBarController.swift
//  swiftApp
//
//  Created by HXjiang on 16/7/7.
//  Copyright © 2016年 蒋林. All rights reserved.
//

import UIKit


class HXTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupChildControllers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupChildControllers() -> Void {
        
        let animation = AnimationViewController()
        self.setupController(animation, title: "animation", image: "tabbar_audio_white", imageSelect: "tabbar_audio_black")
        
        let block = AnimationViewController()
        self.setupController(block, title: "block", image: "tabbar_music_white", imageSelect: "tabbar_music_black")
        
        let function = AnimationViewController()
        self.setupController(function, title: "function", image: "tabbar_photo_white", imageSelect: "tabbar_photo_black")
        
        
        
        
        
        var arr: String
        
        arr = String()
        
        print(arr)
    
        
//        let dic:NSDictionary = ["" : "", "" : ""]
//
     }
    
    func setupController(vc:UIViewController, title:String, image:String, imageSelect:String) -> Void {

        let nvc = HXNavigationController(rootViewController: vc)
        
//        vc.title = title
//        vc.navigationItem.title = title;
        
//        vc.tabBarItem.title = "first"
        vc.tabBarItem.image = UIImage(named: image)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: imageSelect)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        
        let offset:CGFloat = 5
        vc.tabBarItem.imageInsets = UIEdgeInsetsMake(offset, 0, -offset, 0)
        
        
        self.addChildViewController(nvc)
        
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
