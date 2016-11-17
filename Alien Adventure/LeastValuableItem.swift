//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var leastValue: Int?  //Optional to store the least base value
        var leastItem: UDItem? //Optional to store the item with least base value
        //If invetory has items the return the item with least base value
        
        //Iterate over the inventory to find the item with least base value
        for item in inventory {
            //print(inventory)
            let value = item.baseValue
            if let least = leastValue{ //to check the least value if there are more than 1 item
                if least>value{
                    leastValue = value
                    leastItem = item
                }
            } else{
                leastValue = value //to store the first value
                leastItem = item
            }
            //print(item.baseValue)
            //print(leastValue)
            //print(leastItem)
        }
        return leastItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
