//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var banned = [Int]()
        var itemID = 0
        
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        
        let itemArray = NSArray(contentsOf: dataFileURL) as! [[String:Any]]
        
        for item in itemArray{
            
            if let id = item["ItemID"] as? Int{
                itemID = id
                if let name = item["Name"] as? String{
                    //print(name)
                    let lowerCaseName = name.lowercased()
                    if lowerCaseName.contains("laser"){
                        if let historicalData = item["HistoricalData"] as? NSDictionary{
                            if let age = historicalData["CarbonAge"] as? Int {
                                //print(age)
                                if age < 30 {
                                    banned.append(itemID)
                                }
                            }
                        }
                    }
                }
            }

        }
        //print(banned)
        return banned
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
