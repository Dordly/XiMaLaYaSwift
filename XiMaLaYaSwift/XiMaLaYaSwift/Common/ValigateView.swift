//
//  ValigateView.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/23.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

/**
 * 自定义UIView
 */
public func initWithPublicView(superView:UIView,mainColor:UIColor) ->UIView {
    
    let mainView = UIView.init()
    mainView.backgroundColor = mainColor
    superView.addSubview(mainView)
    return mainView
    
}
/**
 * 自定义UIButton
 */
public func initWithPublicButton(superView:UIView,normalImage:UIImage,selectedImage:UIImage,bgColor:UIColor,titleNormalColor:UIColor,titleSelectedColor:UIColor,titleFont:UIFont,titleStr:NSString,slignment:UIControlContentHorizontalAlignment) ->UIButton {
    let mainButton = UIButton.init(type: UIButtonType.custom)
    mainButton.setBackgroundImage(normalImage, for: UIControlState.normal)
    mainButton.setBackgroundImage(selectedImage, for: UIControlState.selected)
    mainButton.setTitleColor(titleNormalColor, for: UIControlState.normal)
    mainButton.setTitleColor(titleSelectedColor, for: UIControlState.selected)
    mainButton.backgroundColor = bgColor
    mainButton.titleLabel?.font = titleFont
    mainButton.contentHorizontalAlignment = slignment
    mainButton .setTitle(titleStr as String, for: UIControlState.normal)
    superView.addSubview(mainButton)
    return mainButton
}
/**
 * 自定义UILabel
 */
public func initWithPubliLabel(superView:UIView,bgColor:UIColor,textColor:UIColor,textFont:UIFont,align:NSTextAlignment,textStr:NSString) ->UILabel {
    
    let mainLabel = UILabel.init()
    mainLabel.backgroundColor = bgColor
    mainLabel.font = textFont
    mainLabel.textAlignment = align
    mainLabel.textColor = textColor
    mainLabel.text = textStr as String
    superView.addSubview(mainLabel)
    return mainLabel
    
}
/**
 * 自定义UITextField
 */
public func initWithPubliTextField(superView:UIView,bgColor:UIColor,placeholderStr:NSString,font:UIFont,alignment:NSTextAlignment,textColor:UIColor) ->UITextField {
    
    let mainTextField = UITextField.init()
    mainTextField.borderStyle = UITextBorderStyle.none
    mainTextField.placeholder = placeholderStr as String
    mainTextField.autocorrectionType = UITextAutocorrectionType.yes
    mainTextField.returnKeyType = UIReturnKeyType.done
    mainTextField.clearButtonMode = UITextFieldViewMode.never
    mainTextField.font = font
    mainTextField.textAlignment = alignment
    mainTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
    mainTextField.textColor = textColor
    mainTextField.backgroundColor = bgColor
    superView.addSubview(mainTextField)
    return mainTextField
}
/**
 * 自定义UITextView
 */
public func initWithPubliTextView(superView:UIView,bgColor:UIColor,placeholderStr:NSString,font:UIFont,alignment:NSTextAlignment,textColor:UIColor) ->UITextView {
    
    let mainTextView = UITextView.init()
    mainTextView.font = font
    mainTextView.textAlignment = alignment
    mainTextView.textColor = textColor
    mainTextView.backgroundColor = bgColor
    superView.addSubview(mainTextView)
    return mainTextView
}
/**
 * 自定义UIImageView
 */
public func initWithPublicImageView(superView:UIView,bgColor:UIColor,image:UIImage) ->UIImageView {
    
    let mainImageView = UIImageView.init()
    mainImageView.image = image
    mainImageView.backgroundColor = bgColor
    mainImageView.contentMode = UIViewContentMode.scaleAspectFill
    mainImageView.clipsToBounds = true
    superView.addSubview(mainImageView)
    return mainImageView
}
