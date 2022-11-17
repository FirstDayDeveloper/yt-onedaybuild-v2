//
//  Response.swift
//  yt-onedaybuild-v2
//
//  Created by Kevin Nyangena on 11/17/22.
//

import Foundation

struct Response: Decodable {
    
    var items: [Video]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
    }
    
    init (from decoder:Decoder) throws {
        
        // Get a container
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Decode into an array of video objects
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
