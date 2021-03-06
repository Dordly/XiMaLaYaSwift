//
//  DordlyFirstView.swift
//  XiMaLaYaSwift
//
//  Created by dordly on 2018/8/22.
//  Copyright © 2018年 dordly. All rights reserved.
//
protocol DordlyFirstViewDelegate: NSObjectProtocol {
    func selectedIndex(pageTitleView: DordlyFirstView, selectedIndex: Int)
}
import UIKit

class DordlyFirstView: UIView {
    
    var topContentArray = NSArray()
    var changeArray = NSMutableArray()
    var collectionView : UICollectionView?
    
    weak var firstViewDelegate: DordlyFirstViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        changeArray = NSMutableArray.init()
        topContentArray = ["分类","推荐","VIP","直播","小说","广播","儿童","精品","段子","音乐","相声","历史","人文","情感","英语"]
        for _ in 1...topContentArray.count {
            changeArray .add("0" as String)
        }
        let layOut = UICollectionViewFlowLayout();
        collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height), collectionViewLayout: layOut)
        layOut.scrollDirection = UICollectionViewScrollDirection.vertical;
        layOut.itemSize = CGSize.init(width: 60, height: 40)
        collectionView?.backgroundColor = MainBgColor
        collectionView?.delegate = self
        collectionView?.dataSource = self
        self.addSubview(collectionView!)
        
        collectionView?.register(DordlyFirstHeaderCell().classForCoder, forCellWithReuseIdentifier: "DordlyFirstHeaderCell")
        
        
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
        cell.titleBt .setTitle(topContentArray[indexPath.item] as? String, for: .normal)
        cell.titleBt.tag = indexPath.item
        if changeArray[indexPath.item] as! String == "1" {
            cell.titleBt.backgroundColor = MainColor
            cell.titleBt .setTitleColor(MainBgColor, for: .normal)
            changeArray .replaceObject(at: indexPath.item, with: "1")
        }else{
            cell.titleBt.backgroundColor = MainBgColor
            cell.titleBt .setTitleColor(MainTwoTitleColor, for: .normal)
            changeArray .replaceObject(at: indexPath.item, with: "0")
        }
        cell.titleBt.addTarget(self, action: #selector(BtClick(sender:)), for: .touchUpInside)
        return cell
        
    }
    
    @objc func BtClick(sender:UIButton) {
        print(sender.tag)
        sender.isSelected = !sender.isSelected
        if sender.isSelected == true {
            for i in 0...changeArray.count-1 {
                if i == sender.tag {
                    changeArray .replaceObject(at: sender.tag, with: "1")
                }else{
                    changeArray .replaceObject(at: i, with: "0")
                }
            }
        }else{
            changeArray .replaceObject(at: sender.tag, with: "0")
        }
        collectionView?.reloadData()
        firstViewDelegate?.selectedIndex(pageTitleView: self, selectedIndex: sender.tag)
    }
}
