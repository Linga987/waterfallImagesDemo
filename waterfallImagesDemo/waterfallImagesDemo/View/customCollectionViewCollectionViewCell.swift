//
//  customCollectionViewCollectionViewCell.swift
//  waterfallImagesDemo
//
//  Created by shanmuga srinivas on 18/05/24.
//

import UIKit
import SDWebImage

class customCollectionViewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setUpUI(imageurl: String) {
        imageView.layer.cornerRadius = 10
        imageView.sd_setImage(with: URL(string: imageurl))
    }
    
}
