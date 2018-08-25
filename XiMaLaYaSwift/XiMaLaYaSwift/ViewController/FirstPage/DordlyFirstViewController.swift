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
    var topContentArray = NSArray()
    
    var headerScrollView = UIScrollView()
    var bottomScrollView = UIScrollView()
    var firstView = DordlyFirstView()
    var blackVC = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = MainBgColor
        topContentArray = ["分类","推荐","VIP","直播","小说","广播","儿童","精品","段子","音乐","相声","历史","人文","情感","英语"]
        self.MainNavigationBar()
        self.createMainView()
        self.view.addSubview(pageTitleView)
        self.view.addSubview(pageContentView)
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
        let changeBt = initWithPublicButton(superView: self.view, normalImage: Img(name: "change_down"), selectedImage: Img(name: "change_down"), bgColor: MainBgColor, titleNormalColor: MainClearColor, titleSelectedColor: MainClearColor, titleFont: UIFont.boldSystemFont(ofSize: 12), titleStr: "选中", slignment: UIControlContentHorizontalAlignment.center)
        changeBt .addTarget(self, action: #selector(changeBtClick), for: UIControlEvents.touchUpInside)
        changeBt.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.snp.top).offset(navHeight)
            make.height.width.equalTo(45)
            make.right.equalTo(self.view.snp.right)
        }
    }
    //点击展示可选栏
    @objc func changeBtClick() {
        self.blackVC = initWithPublicView(superView: UIApplication.shared.keyWindow!, mainColor: UIColor.black)
        self.blackVC.frame = CGRect.init(x: 0, y: navHeight, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-navHeight)
        self.blackVC.alpha = 0.7
        self.firstView = DordlyFirstView.init(frame: CGRect.init(x: 0, y: navHeight, width: SCREEN_WIDTH, height: 220))
        self.firstView.firstViewDelegate = self
        UIApplication.shared.keyWindow!.addSubview(self.firstView)
    }
    private lazy var pageTitleView: MFPageTitleView = {
        let config = MFPageTitleViewConfig()
        config.titleColor = colorWithRGB(43, g: 43, b: 43)
        config.titleSelectedColor = colorWithRGB(211, g: 0, b: 0)
        config.titleFont = UIFont.boldSystemFont(ofSize: 14)
        config.indicatorColor = colorWithRGB(211, g: 0, b: 0)
        let pageTitleView = MFPageTitleView(frame: CGRect(x: 0, y: navHeight, width: SCREEN_WIDTH-45, height: 45), titles: ["分类","推荐","VIP","直播","小说","广播","儿童","精品","段子","音乐","相声","历史","人文","情感","英语"], config: config)
        pageTitleView.pageTitleViewDelegate = self
        return pageTitleView
    }()
    
    private lazy var pageContentView: MFPageContentView = {
        var childControllers = [UIViewController]()
        for _ in 0..<topContentArray.count {
            let vc = UIViewController()
            vc.view.backgroundColor = MainBgColor
            childControllers.append(vc)
        }
        
        let pageContentViewY = pageTitleView.frame.maxY
        let pageContentView = MFPageContentView(frame: CGRect(x: 0, y: pageContentViewY, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-pageContentViewY), parentVC: self, childVCs: childControllers)
        pageContentView.pageContentViewDelegate = self
        return pageContentView
    }()
}
extension DordlyFirstViewController: MFPageTitleViewDelegate, MFPageContentViewDelegate,DordlyFirstViewDelegate {
    func selectedIndex(pageTitleView: DordlyFirstView, selectedIndex: Int) {
        self.firstView .removeFromSuperview()
        self.blackVC .removeFromSuperview()
        self.pageContentView.setPageContentViewCurrentIndex(currentIndex: selectedIndex)
    }
    
    
    func selectedIndexInPageTitleView(pageTitleView: MFPageTitleView, selectedIndex: Int) {
        self.pageContentView.setPageContentViewCurrentIndex(currentIndex: selectedIndex)
    }
    func pageContentViewScroll(progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        self.pageTitleView.setPageTitleView(progress: progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
    
}
