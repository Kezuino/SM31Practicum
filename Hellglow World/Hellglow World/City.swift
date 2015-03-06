//
//  City.swift
//  Hellglow World
//
//  Created by fhict on 05/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

class City: NSObject {
    private var name:NSString
    private var population:Int
    private var glowActs:NSMutableArray
    
    /**
        Constructor to initialize a City
    
        :param: name The name of the city as String
        :param: population The population of the city as Int
    */
    internal init(name:String, population:Int) {
        self.name = name
        self.population = population
        self.glowActs = NSMutableArray()
    }
    
    /**
        Gets the name of the city
    
        :returns: The name of the city as String
    */
    internal func getName() -> String
    {
        return self.name
    }
    
    /**
        Gets the population of the city
    
        :returns: The population of the city as String
    */
    internal func getPopulation() -> Int
    {
        return self.population
    }
    
    /**
        Add a glow act to the city
    
        :param: glowAct The glow act that you want to add to the city
    */
    internal func addGlowAct(glowAct:GlowAct)
    {
        self.glowActs.addObject(glowAct)
    }
    
    /**
        Show the info of the city and its glow acts
    */
    internal func showInfo()
    {
        var glowActs = self.glowActs.count > 0 ?
                self.glowActs.count > 1 ?
                    "are \(self.glowActs.count) glow acts" :
                    "is \(self.glowActs.count) glow act" :
                "are no glow acts"
        
        println("In the city of \(self.getName()) there are currently living \(self.population) people.\nCurrently there \(glowActs) in the city")
        
        //Chosen NOT to use showInfo here. It would not fit the context.
        for (index, obj) in enumerate(self.glowActs) {
            let glowAct = obj as GlowAct
            println("\(index + 1). \(glowAct.getName()) at \(glowAct.getStartTime()) with an average rating of \(glowAct.getRating())")
        }
    }
}
