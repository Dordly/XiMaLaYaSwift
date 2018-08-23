//
//  DordlyFile.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/23.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

//设置全局宽高
let KScreenH =  UIScreen.main.bounds.size.height
let KScreenW =  UIScreen.main.bounds.size.width

//设置常用颜色值
public func colorWithRGB(_ r:CGFloat,g:CGFloat,b:CGFloat)->UIColor{
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}
//应用主颜色值
let MainColor = colorWithRGB(190,g:107,b: 49)
//主标题
let MainTitleColor = UIColor.black
//副标题
let MainTwoTitleColor = colorWithRGB(153,g:153,b: 153)
