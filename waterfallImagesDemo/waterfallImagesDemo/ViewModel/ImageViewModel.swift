//
//  imageViewModel.swift
//  waterfallImagesDemo
//
//  Created by shanmuga srinivas on 18/05/24.
//

import Foundation

class ImageViewModel {
    
    var imageData = [ImageModel]()
    
    func getData() {
        imageData = Bundle.main.decode("data.json")
        print(imageData)
    }
    
    func numberOfItems() -> Int {
       return imageData.count
    }
    
    func numberOfSections() -> Int {
        return imageData.count
    }
}
