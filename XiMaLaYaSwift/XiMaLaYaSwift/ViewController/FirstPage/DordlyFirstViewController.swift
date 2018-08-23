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
        self.view.backgroundColor = MainBgColor
        self.MainNavigationBar()
        self.createMainView()
    }
    //自定义NavigationBar
    public func MainNavigationBar() {
        let mainView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: KScreenW, height: 45))
        mainView.backgroundColor = MainClearColor
        self.navigationItem.titleView = mainView
        //消息中心
        centerNewBt = initWithPublicButton(superView: mainView, normalImage: Img(name: "load"), selectedImage: Img(name: "load"), bgColor: MainClearColor, titleNormalColor: MainClearColor, titleSelectedColor: MainClearColor, titleFont: UIFont.boldSystemFont(ofSize: 14), titleStr: "消息", slignment: UIControlContentHorizontalAlignment.center)
        //搜索
        searchView = initWithPubliTextField(superView: mainView, bgColor: MainClearColor, placeholderStr: "搜索专辑，主播，广播，声音", font: UIFont.boldSystemFont(ofSize: 12), alignment: NSTextAlignment.left, textColor: MainTitleColor)
        searchView.layer.masksToBounds = true
        searchView.layer.cornerRadius = 20
        //创建阴影
        searchView.borderStyle = UITextBorderStyle.none
        //历史记录
        loadBt = initWithPublicButton(superView: mainView, normalImage: Img(name: "load"), selectedImage: Img(name: "load"), bgColor: MainClearColor, titleNormalColor: MainClearColor, titleSelectedColor: MainClearColor, titleFont: UIFont.boldSystemFont(ofSize: 14), titleStr: "记录", slignment: UIControlContentHorizontalAlignment.center)
        //下载
        downBt = initWithPublicButton(superView: mainView, normalImage: Img(name: "down"), selectedImage: Img(name: "down"), bgColor: MainClearColor, titleNormalColor: MainClearColor, titleSelectedColor: MainClearColor, titleFont: UIFont.boldSystemFont(ofSize: 14), titleStr: "下载", slignment: UIControlContentHorizontalAlignment.center)
        
        centerNewBt.snp.makeConstraints { (make) in
            make.centerY.equalTo(mainView.snp.centerY)
            make.left.equalTo(mainView.snp.left).offset(10)
            make.height.width.equalTo(20)
        }
        downBt.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(centerNewBt)
            make.right.equalTo(mainView.snp.right).offset(-10)
            make.width.height.equalTo(centerNewBt)
        }
        loadBt.snp.makeConstraints { (make) in
            make.top.bottom.width.height.equalTo(downBt)
            make.right.equalTo(downBt.snp.left).offset(-10)
        }
        searchView.snp.makeConstraints { (make) in
            make.centerY.equalTo(mainView.snp.centerY)
            make.left.equalTo(centerNewBt.snp.right).offset(10)
            make.right.equalTo(loadBt.snp.left).offset(-10)
            make.height.equalTo(35)
        }
    }
    private func createMainView() {
        
        headerScrollView = UIScrollView.init()
        headerScrollView.backgroundColor = MainBgColor
        self.view .addSubview(headerScrollView)
        headerScrollView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(view)
            make.height.equalTo(45)
        }
        
        bottomScrollView = UIScrollView.init()
        bottomScrollView.backgroundColor = MainBgColor
        self.view.addSubview(bottomScrollView)
        bottomScrollView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(headerScrollView)
            make.bottom.equalTo(view)
        }
        
    }
}
