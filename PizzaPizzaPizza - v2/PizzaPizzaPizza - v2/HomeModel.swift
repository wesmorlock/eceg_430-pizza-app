//
//  HomeModel.swift
//  PizzaPizzaPizza - v2
//
//  Created by Wesley Morlock on 9/21/17.
//  Copyright © 2017 WM. All rights reserved.
//

import UIKit

protocol HomeModelDelegate{
    
    func itemsDownloaded(locations:[Location])
    
}

class HomeModel: NSObject {
    
    var delegate:HomeModelDelegate? // if someone assigns itself as delegate, run HMD {}

    func getItems () {
        
        // hit the web services URL
        let serviceURL = "http://iosquiz.com/service.php"
        
        // download the json data
        let url = URL(string: serviceURL)
        
        if let url = url {
            
            // create url session
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url, completionHandler:
                { (data, response, error) in
                
                if error == nil {
                    // succeeded
                    
                    // call parse JSON function
                    self.parseJSON(data!) // learn labels vs arguments for paramaters
                } else {
                    // error occurred
                }
            })
            
            // resume task
            task.resume()
        }
        // parse it out into location structs
        
        // notify the view controller
        
        // pass the data back
        
    }
    
    func parseJSON(_ data:Data) {
        
        var locArray = [Location]()
        
        
        do {
            // parse the data into location structs
            let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as! [Any]
            
            
            // loop through each result in the array
            for jsonResult in jsonArray {
                let jsonDict = jsonResult as! [String:String] // what does as! do exactly? type cast?
                
                let loc = Location(name: jsonDict["Name"]!,
                                   address: jsonDict["Address"]!,
                                   latitude: jsonDict["Latitude"]!,
                                   longitude: jsonDict["Longitude"]!)  // this is based on the JSON key names
                locArray.append(loc)
            }
            
            DispatchQueue.main.async {
                // TODO: Pass location array back to delegate
                
                self.delegate?.itemsDownloaded(locations: locArray)
            }
        }
        catch {
            print("There was an error")
        }
        
        
    }
    
}
