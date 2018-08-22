//
//  DordlyFirstViewController.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/21.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

class DordlyFirstViewController: UIViewController {
    
    var downBt = UIButton()
    var loadBt = UIButton()
    var searchView = UITextField()
    
    var headerScrollView = UIScrollView()
    var bottomScrollView = UIScrollView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.createMainView()
    }
    
    private func createMainView() {
        downBt.frame = CGRect.init(x: self.view.frame.size.width-45, y: 85, width: 25, height: 25)
        loadBt.frame = CGRect.init(x: self.view.frame.size.width-90, y: 85, width: 25, height: 25)
        searchView.frame = CGRect.init(x: 20, y: 80, width: self.view.frame.size.width - downBt.frame.size.width-loadBt.frame.size.width-80, height: 40)
        
    }
}
