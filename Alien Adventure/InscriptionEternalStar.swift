//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        //Iterate over the inventory to check if inscription has the sub-string "THE ETERNAL STAR" in it.
        for item in inventory{
            //print(item.name)
            //If item has the sub-string "THE ETERNAL STAR" return the item.
            if (item.inscription?.contains("THE ETERNAL STAR")) == true {
                //print(item)
                return item
            }
        }
        return nil
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
