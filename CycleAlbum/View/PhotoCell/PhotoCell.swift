//
//  PhotoCell.swift
//  CycleAlbum
//
//  Created by 翁燮羽 on 2021/12/11.
//

import UIKit

class PhotoCell: UICollectionViewCell {

    @IBOutlet weak var photoImage: UIImageView!
    
    
    func cellStyleSet(imageName: String) {
        photoImage.image = UIImage(named: imageName)
    }

}
