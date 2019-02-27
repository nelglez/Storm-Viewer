//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Nelson Gonzalez on 11/11/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var stormImagesController = StormImagesController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stormImagesController.pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = stormImagesController.pictures[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1: Try loading the "Detail" view controller and typecasting it to be DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            // 2: success! Now set its selectedImage property
            vc.image = stormImagesController.pictures[indexPath.row]
            
            // 3: Now push it into the navigation controller
            
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }


}

