//
//  BaseMainTabBarViewController.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/22.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

class BaseMainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTabbar()
        self.addChildViewController()
        
    }
    
    private func setupTabbar(){
        let tabBarItem = UITabBarItem.appearance()
        let norDict = NSMutableDictionary(capacity: 0)
        norDict[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 10)
        norDict[NSAttributedStringKey.foregroundColor] = UIColor.init(red: 230, green: 230, blue: 230, alpha: 1)
        tabBarItem.setTitleTextAttributes(norDict as? [NSAttributedStringKey : Any], for: .normal)
        
        let selDict = NSMutableDictionary(capacity: 0)
        selDict[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 10)
        selDict[NSAttributedStringKey.foregroundColor] = UIColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        tabBarItem.setTitleTextAttributes(selDict as? [NSAttributedStringKey : Any], for: .selected)
        UITabBar.appearance().backgroundColor = UIColor.init(red: 244, green: 244, blue: 244, alpha: 1)
        
    }
    private func addChildViewController(){
        self.setUpChildController(childVc: DordlyFirstViewController(), norImage: UIImage(named:"JCScanNormal")!, selImage: UIImage(named: "JCScanSelected")!, title: "首页")
        self.setUpChildController(childVc: DordlyListenViewController(), norImage: UIImage(named:"JCScanNormal")!, selImage: UIImage(named: "JCScanSelected")!, title: "我听")
        self.setUpChildController(childVc: DordlyVideoViewController(), norImage: UIImage(named:"JCScanNormal")!, selImage: UIImage(named: "JCScanSelected")!, title: "播放器")
        self.setUpChildController(childVc: DordlyFindViewController(), norImage: UIImage(named:"JCScanNormal")!, selImage: UIImage(named: "JCScanSelected")!, title: "发现")
        self.setUpChildController(childVc: DordlyMySelfViewController(), norImage: UIImage(named:"JCScanNormal")!, selImage: UIImage(named: "JCScanSelected")!, title: "我的")
    }
    private func setUpChildController(childVc:UIViewController,norImage:UIImage,selImage:UIImage,title:String){
//        let nav = UINavigationController(rootViewController: childVc)
//        nav.navigationBar.barTintColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 1)
//        nav.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
//        nav.navigationBar.tintColor = UIColor.white
        childVc.tabBarItem = UITabBarItem(title: title, image: norImage.withRenderingMode(.alwaysOriginal), selectedImage: selImage.withRenderingMode(.alwaysOriginal))
        self.addChildViewController(childVc)
    }

}
