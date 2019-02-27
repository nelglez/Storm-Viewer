//
//  DetailViewController.swift
//  Storm Viewer
//
//  Created by Nelson Gonzalez on 11/11/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
   // var selectedImage: String?//String because its the fileName of the image which is a string
    
    var image: Photo? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
//        if let imageToLoad = selectedImage {
//            imageView.image = UIImage(named: imageToLoad)
//        }
        
        updateViews()
    }
    
    func updateViews(){
        guard isViewLoaded else {return}
        
        guard let image = image else {return}
        title = image.name
        imageView.image = UIImage(named: image.name)
    }
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return navigationController?.hidesBarsOnTap ?? false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.hidesBarsOnTap = false 
    }
    
}
