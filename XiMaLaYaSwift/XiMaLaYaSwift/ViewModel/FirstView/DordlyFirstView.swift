//
//  DordlyFirstView.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/22.
//  Copyright © 2018年 dordly. All rights reserved.
//

import UIKit

class DordlyFirstView: UIView {
    
    var collectionVC = UICollectionView()
    var topContentArray = NSArray()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        topContentArray = ["分类","推荐","VIP","直播","小说","广播","儿童","精品","段子","音乐","相声","历史","人文","情感","英语"]
        let layOut = UICollectionViewFlowLayout();
        collectionVC = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height), collectionViewLayout: layOut)
        layOut.scrollDirection = UICollectionViewScrollDirection.horizontal;
        layOut.itemSize = CGSize.init(width: 60, height: 35)
        collectionVC.backgroundColor = MainBgColor
        collectionVC.delegate = self
        collectionVC.dataSource = self
        self.addSubview(collectionVC)
        
        collectionVC.register(DordlyFirstHeaderCell().classForCoder, forCellWithReuseIdentifier: "DordlyFirstHeaderCell")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension DordlyFirstView : UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return topContentArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = DordlyFirstHeaderCell.init()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DordlyFirstHeaderCell", for: indexPath) as! DordlyFirstHeaderCell
        return cell
        
    }
    
    
}
