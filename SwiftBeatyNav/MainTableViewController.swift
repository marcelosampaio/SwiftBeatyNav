//
//  MainTableViewController.swift
//  SwiftBeatyNav
//
//  Created by Marcelo Sampaio on 6/27/17.
//  Copyright © 2017 Marcelo Sampaio. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    // MARK: - Properties
    var images = [String]()
    var names = [String]()
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load soarc
        loadData()

    }

    
    // MARK: - Application Data Source
    private func loadData() {
        
        images.append("image1");
        images.append("image2");
        
        names.append("Bykticles Sponsors");
        names.append("Jetamin Traphicx");
        
    }
    
    
    
    

    // MARK: - Table View Delegate

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = names[indexPath.row]
        cell.imageView?.image = UIImage.init(named: images[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }
 
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetail" {
            let indexPath = tableView.indexPathForSelectedRow
            let detailVC = segue.destination as! DetailViewController
            detailVC.viewTitle = names[(indexPath?.row)!]
            detailVC.imageName = images[(indexPath?.row)!]
            
        }
        
        
        
    }
    
    


}
