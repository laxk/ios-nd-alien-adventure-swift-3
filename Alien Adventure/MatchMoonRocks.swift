//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        var moonRock: [UDItem] = []  //moonRock Array to store the moonRocks
        //Iterate over the loop to check if inventory has moonRocks
        for item in inventory{
            //print(item.name)
            //If inventory has moonRocks add the item to moonROck array
            if item.name == "MoonRock" {
                moonRock.append(item)
            }
        }
        return moonRock
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
