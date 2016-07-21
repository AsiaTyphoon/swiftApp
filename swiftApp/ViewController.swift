//
//  ViewController.swift
//  swiftApp
//
//  Created by haixinweishi on 15/12/3.
//  Copyright © 2015年 蒋林. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.learningOfFirstDay()
//        self.createUILabel()
//        self.createBtn(UIColor.blueColor(), title: "firstbtn")
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "right", style:UIBarButtonItemStyle.Done, target:self, action:nil)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Reply, target: self, action: nil)
        
        self.tableView()
        
        print("viewDidLoad")
        
    
        
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidAppear(animated: Bool) {
        
    }
    
    func learningOfFirstDay()
    {
        //let 常量 只能被赋值一次
        //var 变量
//        print("learningOfFirstDay%s", "sf")
//        
//        var new = 10
//        let width:Float = 20.0
//        new = 30
//        print(new)
//        print(width)
//        
//        let label = "The width is "
//        let widthg = 96
//        let widthLabel = label + String(widthg)
//        print(widthLabel)
//        
//        let firstFolat:Float = 5
//        print("firstFolat %ld", firstFolat)
        
        var shoppingList: Array = ["catfish", "water", "tulips", "blue paint"]
        print(shoppingList[0])
        

    }
    
    func createUILabel() {
        
        let rectRect:CGRect = CGRectMake(20, 60, 60, 80)
        
        let label:UILabel = UILabel(frame:rectRect)
        
        label.text = "here"
        
        label.textColor = UIColor.redColor()
        
        self.view.addSubview(label)
    }
    
    func createBtn(color: UIColor, title: String) -> Void {
        
        
        let btn:UIButton = UIButton.init(frame: CGRectMake(20, 200, 100, 80))
        
        btn.setTitle(title, forState: UIControlState.Normal)
        btn.setTitleColor(color, forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.orangeColor()
        
        self.view.addSubview(btn)

    }
    
    //MARK: - UITableViewDelegate
    
    func tableView() -> Void {
        
        let tableView:UITableView = UITableView.init(frame: CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100), style: UITableViewStyle.Plain)
        
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.tableFooterView = UITableView.init()
        self.view.addSubview(tableView)
        
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier = "cellId"
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)

        cell.textLabel?.text = "first cell"
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let viewcontroller:AnimationViewController = AnimationViewController()
        
//        self.navigationController?.pushViewController(viewcontroller, animated:true)
        self.presentViewController(viewcontroller, animated: true, completion: nil)
        
    }
 }

