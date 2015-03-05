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
        self.addGlowAct(glowAct)
    }
    
    internal func showInfo()
    {
        println("In the city of \(self.getName()) there are currently living \(self.getPopulation()) people.")
    }
}
