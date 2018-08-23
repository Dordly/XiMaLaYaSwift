//
//  DordlyFirstViewController.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/21.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit
import SnapKit

class DordlyFirstViewController: UIViewController {
    
    var navigationView = UIView()
    var downBt = UIButton()//下载
    var loadBt = UIButton()//历史记录
    var centerNewBt = UIButton()//消息中心
    var searchView = UITextField()//搜索
    
    var headerScrollView = UIScrollView()
    var bottomScrollView = UIScrollView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.createMainView()
        
    }
    //自定义NavigationBar
    public func MainNavigationBar() {
//        navigationView = 
    }
    private func createMainView() {
        
        headerScrollView = UIScrollView.init()
        self.view .addSubview(headerScrollView)
        headerScrollView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(view)
            make.height.equalTo(45)
        }
        
        bottomScrollView.frame = CGRect.init(x: 0, y: headerScrollView.frame.size.height+searchView.frame.size.height+100, width: self.view.frame.size.width, height: self.view.frame.size.height-(headerScrollView.frame.size.height+searchView.frame.size.height+100))
        self.view.addSubview(bottomScrollView)
        
    }
}
