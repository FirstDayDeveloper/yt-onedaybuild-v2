//
//  ViewController.swift
//  yt-onedaybuild-v2
//
//  Created by Kevin Nyangena on 11/10/22.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
 
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Set the View Controller as the data source and the delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        // Set the View Controller as the delegate of the model
        model.delegate = self

        model.getVideos()

    }
    
    // MARK: - Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        
        // Set the returned videos to our video property
        self.videos = videos
        
        // Refresh the tableview
        tableView.reloadData()
    }
    
    
    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        // Configure the cell with the data
        
        // Get the title for the video in question
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        
        // Return the cell (give the cell back to the table view for display)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

