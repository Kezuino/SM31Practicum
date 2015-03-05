//
//  City.swift
//  Hellglow World
//
//  Created by fhict on 05/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

class City: NSObject {
    var name:NSString
    var population:Int
    var glowActs:NSMutableArray
    
    internal init(name:String, population:Int) {
        self.name = name
        self.population = population
        self.glowActs = NSMutableArray()
    }
}
