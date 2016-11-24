//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var lowerCaseName: String
        var commonCharacter: Character?
        var charactersArray: [Character] = []
        var charactersCount: [Character:Int] = [:]
        var totalCount = 0
        
        for item in inventory{
            lowerCaseName = item.name.lowercased()
            for char in lowerCaseName.characters{
                charactersArray.insert(char, at: 0)
            }
        }
        
        for char in charactersArray{
            charactersCount[char] = (charactersCount[char] ?? 0) + 1
        }
        
        for (key,value) in charactersCount{
            if value > totalCount{
                totalCount = value
                commonCharacter = key
            }
        }
        
        return commonCharacter
    }
}
