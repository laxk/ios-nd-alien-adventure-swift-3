//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longestWordCount = 0 //Variable to store the value of longest wordlength
        var longestName = ""  //Variable to store the longestName
        var reversedName = ""  //Variable to store the reversedName
        
        //print(inventory)
        //Iterate over the inventory to find the longest name
        for item in inventory{
            //print(item.name.characters.count)
            //print(item.name)
            let currrentWordCount = item.name.characters.count
            
            //Check the word count and assing the current item name to longestName if the word length is greater than the previous
            if currrentWordCount > longestWordCount {
                longestName = item.name
                longestWordCount = currrentWordCount
            }
            //print(longestName)
            //print(longestWordCount)
        }
        
        //print(longestName)
        
        //reverse the longestName to obtain reversedName
        for i in longestName.characters{
                reversedName = "\(i)" + reversedName
            }
        //print(reversedName)
        //print(inventory)
        return reversedName
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
