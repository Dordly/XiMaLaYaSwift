//
//  MFPageTitleViewConfig.swift
//  MFPagingViewExample
//  GitHub: https://github.com/wwx1991/MFPagingView
//  Created by iOS on 2018/6/12.
//  Copyright © 2018年 GM. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

let navHeight: CGFloat = {
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    if statusBarHeight == 20.0 {
        return 64
    }else {
        return 88
    }
}()

class MFPageTitleViewConfig: NSObject {
    
    /** 是否显示底部分割线，默认为true */
    var showBottomSeparator: Bool = true
    /** 按钮之间的间距，默认为 20.0f */
    var spacingBetweenButtons: CGFloat = 20
    /** 标题文字字号大小，默认 15 号字体 */
    var titleFont: UIFont = UIFont.systemFont(ofSize: 15)
    /** 选中状态下，字体变大 */
    var titleBigFont: UIFont = UIFont.systemFont(ofSize: 18)
    /** 普通状态下标题按钮文字的颜色，默认为黑色 */
    var titleColor: UIColor = UIColor.black
    /** 选中状态下标题按钮文字的颜色，默认为红色 */
    var titleSelectedColor: UIColor = MainColor
    /** 指示器颜色，默认为红色 */
    var indicatorColor: UIColor = MainColor
}
