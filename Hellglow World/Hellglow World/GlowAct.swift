//
//  GlowAct.swift
//  Hellglow World
//
//  Created by fhict on 05/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

class GlowAct: NSObject {
    private var name:String, startTime:String
    private var rating:Int
    
    /**
        Constructor to initialize a GlowAct
    
        :param: name The name of the glow act
        :param: startTime The start time of the glow act
        :param: rating The rating of the glow act
    */
    internal init(name:String, startTime:String, rating:Int) {
        self.name = name
        self.startTime = startTime
        self.rating = rating
    }
    
    /**
        Gets the name of the glow act
    
        :returns: The name of the glow act as String
    */
    internal func getName() -> String
    {
        return self.name
    }
    
    /**
        Gets the start time of the glow act
    
        :returns: The start time of the glow act as String
    */
    internal func getStartTime() -> String
    {
        return self.startTime
    }
    
    /**
        Gets the rating of the glow act
    
        :returns: The rating of the glow act as Int
    */
    internal func getRating() -> Int
    {
        return self.rating
    }
    
    /**
        Displays the information of the glow act
    */
    internal func showInfo()
    {
        println("The act is called \(self.getName()) and starts at \(self.getStartTime()). It is given an average rating of \(self.getRating())")
    }
}
