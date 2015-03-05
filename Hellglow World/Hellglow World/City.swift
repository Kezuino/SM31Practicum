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
    
    internal init(name:String, population:Int) {
        self.name = name
        self.population = population
        self.glowActs = NSMutableArray()
    }
    
    internal func getName() -> String
    {
        return self.name
    }
    
    internal func getPopulation() -> Int
    {
        return self.population
    }
    
    internal func getGlowActs() -> NSMutableArray
    {
        return self.glowActs
    }
    
    internal func addGlowAct(glowAct:GlowAct)
    {
        self.glowActs.addObject(glowAct)
    }
    
    internal func showInfo()
    {
        var glowActs = self.getGlowActs().count > 0 ?
                self.getGlowActs().count > 1 ?
                    "are \(self.getGlowActs().count) glow acts" :
                    "is \(self.getGlowActs().count) glow act" :
                "are no glow acts"
        
        println("In the city of \(self.getName()) there are currently living \(self.population) people.\nCurrently there \(glowActs) in the city")
        
        for glowAct in self.glowActs as [GlowAct] {
            //Chosen not to use the showInfo() method from GlowAct since that does not fit in context.
            
            println("\n\(index + 1) \(glowAct.getName()) at \(glowAct.getStartTime()). Has a rating of \(glowAct.getRating())")
        }
    }
}
