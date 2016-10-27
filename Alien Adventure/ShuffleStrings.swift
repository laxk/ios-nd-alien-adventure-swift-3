//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        
        // Check if s1, s2 and shuffle are all empty strings and if yes, return true
        if (s1 == "" && s2 == "" && shuffle == ""){
            return true
        } else if (shuffle.characters.count != (s1.characters.count+s2.characters.count)){
            // If shuffle is not of equal length of s1 and s2 combined return false
            return false
        } else {
            //Evaluate for shuffle string
            var s1s = ""
            var s2s = ""
            
            for char in shuffle.characters{
                //if the char is found in s1 or s2 append it to s1s or s2s respectively.
                if s1.characters.contains(char){
                    s1s = s1s + String(char)
                }
                if s2.characters.contains(char){
                    s2s = s2s + String(char)
                }
            }
            if (s1s == s1 && s2s == s2){
                return true
            } else {
                return false
            }
        }
    }
}

