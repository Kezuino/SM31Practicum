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
    
    internal init(name:String, startTime:String, rating:Int) {
        self.name = name
        self.startTime = startTime
        self.rating = rating
    }
    
    internal func getName() -> String
    {
        return self.name
    }
    
    internal func getStartTime() -> String
    {
        return self.startTime
    }
    
    internal func getRating() -> Int
    {
        return self.rating
    }
    
    internal func showInfo()
    {
        println("The act is called \(self.getName()) and starts at \(self.getStartTime()). It is given an average rating of \(self.getRating())")
    }
}
