//
//  Pirate.swift
//  piratedApp
//
//  Created by fhict on 26/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

public class Pirate {
    private var name:String!, life:String, yearsActive:String, counrtyOrigin:String, comments:String;
    
    /**
        Constructor to initialize a GlowAct
    
        :param: name Name of this Pirate.
        :param: life The lifespan years of this Pirate
        :param: yearsActive The yearspan that this Pirate was active as pirate
        :param: countryOrigin The country this Pirate originated from
        :param: comments Extra information on this Pirate
    */
    init(name:String!, life:String, yearsActive:String, countryOrigin:String, comments:String) {
        self.name = name!;
        self.yearsActive = yearsActive;
        self.life = life;
        self.counrtyOrigin = countryOrigin;
        self.comments = comments;
    }
    
    /**
        Gets the name of this Pirate
    */
    func getName() -> String! {
        return self.name
    }
    
    /**
        Gets the lifespan years of this Pirate
    */
    func getLife() -> String {
        return self.life
    }
    
    /**
        Gets the span of years this Pirate was active as a pirate
    */
    func getYearsActive() -> String {
        return self.yearsActive
    }
    
    /**
        Gets the country this Pirate originated from
    */
    func getCountyOfOrigin() -> String {
        return self.counrtyOrigin
    }
    
    /**
        Gets extra information on this Pirate
    */
    func getComments() -> String {
        return self.comments
    }
}
