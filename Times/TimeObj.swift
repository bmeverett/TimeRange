//
//  TimeObj.swift
//  Times
//
//  Created by Brandon Everett on 4/13/17.
//  Copyright © 2017 Brandon Everett. All rights reserved.
//

import UIKit

public class TimeObj: NSObject {
    
    var StartTime: Double
    var EndTime: Double
    var Name: String
    
    init(startTime: Double, endTime: Double, name: String) {
        self.StartTime = startTime;
        self.EndTime = endTime;
        self.Name = name;
    }
    
}
