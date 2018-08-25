//
//  DordlyFirstHeaderCell.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/24.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

class DordlyFirstHeaderCell: UICollectionViewCell {
    
    var titleBt = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = MainBgColor
        
        titleBt = UIButton.init()
        titleBt .setTitle("分类", for: .normal)
        titleBt.setTitleColor(MainTwoTitleColor, for: .normal)
        titleBt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        titleBt.backgroundColor = MainBgColor
        self.addSubview(titleBt)
        titleBt.layer.masksToBounds = true
        titleBt.layer.cornerRadius = 13
        titleBt.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self)
            make.width.equalTo(50)
            make.height.equalTo(26)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
