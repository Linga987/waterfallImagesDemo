//
//  ImageModel.swift
//  waterfallImagesDemo
//
//  Created by shanmuga srinivas on 17/05/24.
//

import Foundation

struct ImageModel: Codable {
    let id: String
    let width: Int
    let height: Int
    let urls: Urls?
    let sponsorship: Sponsorship?
}

struct Urls: Codable {
    let raw, full, regular, small: String?
    let thumb, smallS3: String?
}

struct Sponsorship: Codable {
    let tagline: String?
}
