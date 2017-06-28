//
//  DetailViewController.swift
//  SwiftBeatyNav
//
//  Created by Marcelo Sampaio on 6/27/17.
//  Copyright © 2017 Marcelo Sampaio. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var imageView: UIImageView!
    
    
    // MARK: - Properties
    var imageName = String()
    var viewTitle = String()
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // set view's title
        navigationItem.title = viewTitle
        
        // set view's image
        imageView.image = UIImage.init(named: imageName)

        // Navigation tint color
        navigationController?.navigationBar.tintColor = UIColor.orange
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orange]
    
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
        
        
    }


}
