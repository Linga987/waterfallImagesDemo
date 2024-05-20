//
//  ViewController.swift
//  waterfallImagesDemo
//
//  Created by shanmuga srinivas on 17/05/24.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class ViewController: UIViewController {
    
    var viewModel: ImageViewModel = ImageViewModel()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.getData()
        setupImageList()
    }
    
    func setupImageList() {
        collectionView.delegate = self
        collectionView.dataSource = self
        // MARK: CHTCollectionViewWaterfallFlowLayout - Start
        let layout = CHTCollectionViewWaterfallLayout()
        layout.itemRenderDirection = .rightToLeft
        layout.columnCount = 2
        layout.sectionInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
        
        // MARK: CHTCollectionViewWaterfallFlowLayout - End
        
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let item = viewModel.imageData[indexPath.row]
        let height = item.height
        let width = item.width
        let imageSize = CGSize(width: width, height: height)
        return imageSize
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCollectionViewCollectionViewCell
        let imageUrl = viewModel.imageData[indexPath.row].urls?.small ?? ""
        cell.setUpUI(imageurl: imageUrl)
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if indexPath.row == viewModel.imageData.count - 1 {
            
        }
    }
    
    func moreData() {
        for _ in 0...9 {
            
        }
    }
    
}

