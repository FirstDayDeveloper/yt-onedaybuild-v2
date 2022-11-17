//
//  VideoModel.swift
//  yt-onedaybuild-v2
//
//  Created by Kevin Nyangena on 11/15/22.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { data, response, error in
            
            // Check if there are any errors
            if error != nil || data == nil {
                return
            }
            
            do {
            // Parsing the data into video objects
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let response = try decoder.decode(Response.self, from: data!)
                
            dump(response)
            }
            catch {
                
            }
        }
        
        // Kick off the data task
        dataTask.resume()
    }
}
