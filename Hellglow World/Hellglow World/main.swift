//
//  main.swift
//  Hellglow World
//
//  Created by fhict on 05/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import Foundation

println("Hellglow World!")
var blueLightAct = GlowAct(name: "The Bluelight Act", startTime: "22:20", rating: 8)
var redLightAct = GlowAct(name: "The Redlight Act", startTime: "23:00", rating: 6)
var eindhoven = City(name: "Eindhoven", population: 22000)
blueLightAct.showInfo()
eindhoven.addGlowAct(blueLightAct)
eindhoven.addGlowAct(redLightAct)
eindhoven.showInfo()

