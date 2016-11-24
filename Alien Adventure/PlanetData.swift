//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawItemData = try! Data(contentsOf: dataFileURL)
        var itemArray: [[String:Any]]
        do {
            itemArray = try! JSONSerialization.jsonObject(with: rawItemData, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        
        var commonItems = 0
        var uncommonItems = 0
        var rareItems = 0
        var legendaryItems = 0
        var points = 0
        var highestPoints = 0
        var intriguingPlanet = ""
        
        for item in itemArray{
            if let common = item["CommonItemsDetected"] as? Int{
                commonItems = common
            }
            
            if let uncommon = item["UncommonItemsDetected"] as? Int{
                uncommonItems = uncommon
            }
            
            if let rare = item["RareItemsDetected"] as? Int{
                rareItems = rare
            }
            
            if let legendary = item["LegendaryItemsDetected"] as? Int{
                legendaryItems = legendary
            }
            
            points = (legendaryItems*4) + (rareItems*3) + (uncommonItems*2) + (commonItems*1)
            if points > highestPoints{
                highestPoints = points
                if let name = item["Name"] as? String{
                    intriguingPlanet = name
                }
            }
        }

        return intriguingPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
