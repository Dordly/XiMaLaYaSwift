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
        self.setUpChildController(childVc: DordlyFirstViewController(), norImage: "tab_1", selImage: "tab_1", title: "首页")
        self.setUpChildController(childVc: DordlyListenViewController(), norImage: "tab_2", selImage: "tab_2", title: "我听")
        self.setUpChildController(childVc: DordlyVideoViewController(), norImage: "tab_5", selImage: "tab_5", title: "播放器")
        self.setUpChildController(childVc: DordlyFindViewController(), norImage: "tab_3", selImage: "tab_3", title: "发现")
        self.setUpChildController(childVc: DordlyMySelfViewController(), norImage: "tab_4", selImage: "tab_4", title: "我的")
        
    }
    private func setUpChildController(childVc:UIViewController,norImage:NSString,selImage:NSString,title:String){
        let nav = UINavigationController(rootViewController: childVc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = UIImage.init(named: norImage as String)
        nav.tabBarItem.selectedImage = UIImage.init(named: selImage as String)
        self.addChildViewController(nav)
    }

}
