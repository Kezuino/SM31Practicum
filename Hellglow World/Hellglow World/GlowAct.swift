//
//  GlowAct.swift
//  Hellglow World
//
//  Created by fhict on 05/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

class GlowAct: NSObject {
    private var name:NSString, startTime:NSString
    private var rating:Int
    
    internal init(name:String, startTime:String, rating:Int) {
        self.name = name
        self.startTime = startTime
        self.rating = rating
    }
    
    internal NSString getName() {
        return self.name
    }
    
    
    
}
