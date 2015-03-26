//
//  Pirate.swift
//  piratedApp
//
//  Created by fhict on 26/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

public class Pirate {
    var name:String!, life:String, yearsActive:String, counrtyOrigin:String, comments:String;
    
    init(name:String!, life:String, yearsActive:String, countryOrigin:String, comments:String) {
        self.name = name!;
        self.yearsActive = yearsActive;
        self.life = life;
        self.counrtyOrigin = countryOrigin;
        self.comments = comments;
    }
}
