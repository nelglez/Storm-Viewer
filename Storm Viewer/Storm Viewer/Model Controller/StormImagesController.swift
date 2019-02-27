//
//  StormImagesController.swift
//  Storm Viewer
//
//  Created by Nelson Gonzalez on 2/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class StormImagesController {

    private(set) var pictures: [String] = []
    
    init() {
        getImages()
    }
    
    func getImages() {
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
    
}
