//
//  ViewController.swift
//  CycleAlbum
//
//  Created by 翁燮羽 on 2021/12/10.
// 首頁

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
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
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
    }
    
 
    
    
}
