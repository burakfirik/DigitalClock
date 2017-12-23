//
//  ClockProperties.swift
//  DigitalClock
//
//  Created by Burak Firik on 12/22/17.
//  Copyright © 2017 Burak Firik. All rights reserved.
//

import Foundation

class ClockProperties:NSObject, NSCoding {
  
  var backgroundColor : String  = ""
  var digitColor : String  = ""
  var isTwentyFourHourFormat: String = ""
  var timeZone: String = ""
  
  init(backgroundColor: String, digitColor: String, isTwenty: String, timeZone: String) {
    self.backgroundColor = backgroundColor
    self.digitColor = digitColor
    self.isTwentyFourHourFormat = isTwenty
    self.timeZone = timeZone
  }
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(self.backgroundColor, forKey: "backgroundColor")
    aCoder.encode(self.digitColor, forKey: "digitColor")
    aCoder.encode(self.isTwentyFourHourFormat, forKey: "clockFormat")
    aCoder.encode(self.timeZone, forKey: "timeZone")
  }
  
  required convenience init?(coder aDecoder: NSCoder) {
    let backgroundColor = aDecoder.decodeObject(forKey: "backgroundColor") as! String
    let digitColor = aDecoder.decodeObject(forKey: "digitColor") as! String
    let isTwentyFourHourFormat = aDecoder.decodeObject(forKey: "clockFormat") as! String
    let timeZone = aDecoder.decodeObject(forKey: "timeZone") as! String
    self.init(backgroundColor: backgroundColor, digitColor: digitColor, isTwenty: isTwentyFourHourFormat, timeZone: timeZone)
  }
  
  
  
  
}
