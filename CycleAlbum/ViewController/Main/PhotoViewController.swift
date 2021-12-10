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

extension PhotoViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionUISet() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nib = UINib(nibName: "\(PhotoCell.self)", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "\(PhotoCell.self)")
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
