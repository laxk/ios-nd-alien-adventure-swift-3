//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

// MARK: - UDPolicingError

enum UDPolicingError: Error {
    case nameContainsLaser
    case itemFromCunia
    case valueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> ((UDItem) throws -> Void) {
        
        func policingFilter(item: UDItem) throws -> Void {
            if let name = item.name.lowercased() as? String, name.contains("laser") {
                throw UDPolicingError.nameContainsLaser
            }
            else if (item.historicalData["PlanetOfOrigin"]) as? String == "Cunia" {
                throw UDPolicingError.itemFromCunia
            }
            else if let value = item.baseValue as? Int, value < 10 {
                throw UDPolicingError.valueLessThan10
            }
        }
        
        return policingFilter        
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
