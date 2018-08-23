//
//  BaseMainViewController.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/21.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

class BaseMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = MainBgColor
        self.navigationController?.navigationBar.barStyle = UIBarStyle.default
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = MainBgColor
    }

    /** navigationBar right*/
    public func setRightNavigationBar(image:UIImage,btStr:NSString,titleColor:UIColor,bgColor:UIColor,font:UIFont,action:Selector) -> Void {
        let rightButton = UIButton.init(type: UIButtonType.custom)
        rightButton .setImage(image, for: UIControlState.normal)
        rightButton .setTitle(btStr as String, for: UIControlState.normal)
        rightButton.titleLabel?.font = font
        rightButton.backgroundColor = bgColor
        rightButton.setTitleColor(titleColor, for: UIControlState.normal)
        rightButton .addTarget(self, action: action, for: UIControlEvents.touchUpInside)
        rightButton.frame = CGRect.init(x: 0, y: 0, width: 20, height: 20)
        let rightItem = UIBarButtonItem.init(customView: rightButton)
        self.navigationItem.rightBarButtonItem = rightItem
    }
    
    /** navigationBar left*/
    public func setLeftNavigationBar(image:UIImage,btStr:NSString,titleColor:UIColor,bgColor:UIColor,font:UIFont,action:Selector) -> Void {
        let leftButton = UIButton.init(type: UIButtonType.custom)
        leftButton.setImage(image, for: UIControlState.normal)
        leftButton.setTitle(btStr as String, for: UIControlState.normal)
        leftButton.titleLabel?.font = font
        leftButton.backgroundColor = bgColor
        leftButton.setTitleColor(titleColor, for: UIControlState.normal)
        leftButton .addTarget(self, action: action, for: UIControlEvents.touchUpInside)
        leftButton.frame = CGRect.init(x: 0, y: 0, width: 20, height: 20)
        let leftItem = UIBarButtonItem.init(customView: leftButton)
        self.navigationItem.leftBarButtonItem = leftItem
    }
    
    /** navigationBar Center*/
    public func setCenterNavigationBar(view:UIView)-> UIView {
        let mainView = UIView.init()
        let centerItem = UIBarButtonItem.init(customView: mainView)
        self.navigationItem.backBarButtonItem = centerItem
        return mainView
        
    }
}
