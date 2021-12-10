//
//  ViewController.swift
//  CycleAlbum
//
//  Created by 翁燮羽 on 2021/12/10.
// 首頁

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let photoArray = ["photo01","photo02","photo03"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initui()
    }

    ///畫面設定 
    func initui() {
        collectionUISet()
    }

}

extension PhotoViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionUISet() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //載入xib
        let nib = UINib(nibName: "\(PhotoCell.self)", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "\(PhotoCell.self)")
        // 關閉滾動條
        collectionView.showsHorizontalScrollIndicator = false
        //開啟水平滾動
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
    }
    
    ///item 尺寸
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return view.frame.size
    }
    
    //item間隔距離
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PhotoCell.self)", for: indexPath) as? PhotoCell else {
            print("PhotoViewController Get cell Fail")
            return UICollectionViewCell()
        }
        
        cell.cellStyleSet(imageName: photoArray[indexPath.item])
        return cell
    }
    
}
