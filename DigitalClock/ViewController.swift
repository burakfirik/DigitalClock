//
//  ViewController.swift
//  DigitalClock
//
//  Created by Burak Firik on 12/20/17.
//  Copyright © 2017 Burak Firik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var dateFormatter: DateFormatter!
  var myPreference: ClockProperties!
  var currentTime : String = ""
  var defaults : UserDefaults  = UserDefaults.standard
  
  @IBOutlet weak var backGround: UIView!
  
  @IBOutlet weak var colonView: UIView!
  
  @IBOutlet weak var hourFormatOfClock: UISwitch!
  @IBOutlet var firstDigitView: UIView!
  @IBOutlet var secondDigitView: UIView!
  @IBOutlet var thirdDigitView: UIView!
  @IBOutlet var fourthDigitView: UIView!
  @IBOutlet var amPMView: UIView!
  
  @IBOutlet var oneA: UIView!
  @IBOutlet var oneB: UIView!
  @IBOutlet var oneC: UIView!
  @IBOutlet var oneD: UIView!
  @IBOutlet var oneE: UIView!
  @IBOutlet var oneF: UIView!
  @IBOutlet var oneG: UIView!
  
  @IBOutlet var twoA: UIView!
  @IBOutlet var twoB: UIView!
  @IBOutlet var twoC: UIView!
  @IBOutlet var twoD: UIView!
  @IBOutlet var twoE: UIView!
  @IBOutlet var twoF: UIView!
  @IBOutlet var twoG: UIView!
  
  
  @IBOutlet var threeA: UIView!
  @IBOutlet var threeB: UIView!
  @IBOutlet var threeC: UIView!
  @IBOutlet var threeD: UIView!
  @IBOutlet var threeE: UIView!
  @IBOutlet var threeF: UIView!
  @IBOutlet var threeG: UIView!
  
  @IBOutlet var fourA: UIView!
  @IBOutlet var fourB: UIView!
  @IBOutlet var fourC: UIView!
  @IBOutlet var fourD: UIView!
  @IBOutlet var fourE: UIView!
  @IBOutlet var fourF: UIView!
  @IBOutlet var fourG: UIView!
  
  @IBOutlet var amPMLabel: UILabel!
  @IBOutlet var colonLabel: UILabel!
  
  
  @IBOutlet var blackBackgroundButton: UIButton!
  @IBOutlet var grayBackgroundButton: UIButton!
  @IBOutlet var blueBackgroundButton: UIButton!
  @IBOutlet var blueDigitButton: UIButton!
  @IBOutlet var redDigitButton: UIButton!
  @IBOutlet var yellowDigitButton: UIButton!
  @IBOutlet var estButton: UIButton!
  @IBOutlet var cstButton: UIButton!
  @IBOutlet var pstButton: UIButton!
  
  @IBAction func hourFormatOfClock(_ sender: Any) {
    if let sender = sender as? UISwitch {
      if sender.isOn {
        self.dateFormatter.dateFormat = "HH:mm a"
        amPMLabel.isHidden = true
        
      } else {
        self.dateFormatter.dateFormat = "hh:mm a"
        amPMLabel.isHidden = false
        
      }
    }
  }

  @IBAction func blackBackgroundButtonClicked(_ sender: Any) {
    blackBackGround()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    //reloadInputViews()
  
    readDataFromDefaults()
  }
  
  func blackBackGround() {
    backGround.backgroundColor = UIColor.black
    colonView.backgroundColor = UIColor.black
    firstDigitView.backgroundColor = UIColor.black
    secondDigitView.backgroundColor = UIColor.black
    thirdDigitView.backgroundColor = UIColor.black
    fourthDigitView.backgroundColor = UIColor.black
    amPMView.backgroundColor = UIColor.black
    blackBackgroundButton.backgroundColor = UIColor.cyan
    grayBackgroundButton.backgroundColor = UIColor.clear
    blueBackgroundButton.backgroundColor = UIColor.clear
  }
  
  @IBAction func grayBackgroundButtonClicked(_ sender: Any) {
    backGround.backgroundColor = UIColor.lightGray
    colonView.backgroundColor = UIColor.lightGray
    firstDigitView.backgroundColor = UIColor.lightGray
    secondDigitView.backgroundColor = UIColor.lightGray
    thirdDigitView.backgroundColor = UIColor.lightGray
    fourthDigitView.backgroundColor = UIColor.lightGray
    amPMView.backgroundColor = UIColor.lightGray
    grayBackgroundButton.backgroundColor = UIColor.cyan
    blackBackgroundButton.backgroundColor = UIColor.clear
    blueBackgroundButton.backgroundColor = UIColor.clear
    
  }
  
  @IBAction func blueBackgroundButtonClicked(_ sender: Any) {
    backGround.backgroundColor = UIColor.blue
    colonView.backgroundColor = UIColor.blue
    firstDigitView.backgroundColor = UIColor.blue
    secondDigitView.backgroundColor = UIColor.blue
    thirdDigitView.backgroundColor = UIColor.blue
    fourthDigitView.backgroundColor = UIColor.blue
    amPMView.backgroundColor = UIColor.blue
    blueBackgroundButton.backgroundColor = UIColor.cyan
    grayBackgroundButton.backgroundColor = UIColor.clear
    blackBackgroundButton.backgroundColor = UIColor.clear
    
  }
  @IBAction func blueDigitButtonClicked(_ sender: Any) {
    self.amPMLabel.textColor = UIColor.blue
    self.colonLabel.textColor = UIColor.blue
    self.oneA.backgroundColor = UIColor.blue
    self.oneB.backgroundColor = UIColor.blue
    self.oneC.backgroundColor = UIColor.blue
    self.oneD.backgroundColor = UIColor.blue
    self.oneE.backgroundColor = UIColor.blue
    self.oneF.backgroundColor = UIColor.blue
    self.oneG.backgroundColor = UIColor.blue
    self.twoA.backgroundColor = UIColor.blue
    self.twoB.backgroundColor = UIColor.blue
    self.twoC.backgroundColor = UIColor.blue
    self.twoD.backgroundColor = UIColor.blue
    self.twoE.backgroundColor = UIColor.blue
    self.twoF.backgroundColor = UIColor.blue
    self.twoG.backgroundColor = UIColor.blue
    self.threeA.backgroundColor = UIColor.blue
    self.threeB.backgroundColor = UIColor.blue
    self.threeC.backgroundColor = UIColor.blue
    self.threeD.backgroundColor = UIColor.blue
    self.threeE.backgroundColor = UIColor.blue
    self.threeF.backgroundColor = UIColor.blue
    self.threeG.backgroundColor = UIColor.blue
    self.fourA.backgroundColor = UIColor.blue
    self.fourB.backgroundColor = UIColor.blue
    self.fourC.backgroundColor = UIColor.blue
    self.fourD.backgroundColor = UIColor.blue
    self.fourE.backgroundColor = UIColor.blue
    self.fourF.backgroundColor = UIColor.blue
    self.fourG.backgroundColor = UIColor.blue
    self.blueDigitButton.backgroundColor = UIColor.cyan
    self.redDigitButton.backgroundColor = UIColor.clear
    self.yellowDigitButton.backgroundColor = UIColor.clear
    
    
    
  }
  
  @IBAction func redDigitButtonClicked(_ sender: Any) {
    self.amPMLabel.textColor = UIColor.red
    self.colonLabel.textColor = UIColor.red
    self.oneA.backgroundColor = UIColor.red
    self.oneB.backgroundColor = UIColor.red
    self.oneC.backgroundColor = UIColor.red
    self.oneD.backgroundColor = UIColor.red
    self.oneE.backgroundColor = UIColor.red
    self.oneF.backgroundColor = UIColor.red
    self.oneG.backgroundColor = UIColor.red
    self.twoA.backgroundColor = UIColor.red
    self.twoB.backgroundColor = UIColor.red
    self.twoC.backgroundColor = UIColor.red
    self.twoD.backgroundColor = UIColor.red
    self.twoE.backgroundColor = UIColor.red
    self.twoF.backgroundColor = UIColor.red
    self.twoG.backgroundColor = UIColor.red
    self.threeA.backgroundColor = UIColor.red
    self.threeB.backgroundColor = UIColor.red
    self.threeC.backgroundColor = UIColor.red
    self.threeD.backgroundColor = UIColor.red
    self.threeE.backgroundColor = UIColor.red
    self.threeF.backgroundColor = UIColor.red
    self.threeG.backgroundColor = UIColor.red
    self.fourA.backgroundColor = UIColor.red
    self.fourB.backgroundColor = UIColor.red
    self.fourC.backgroundColor = UIColor.red
    self.fourD.backgroundColor = UIColor.red
    self.fourE.backgroundColor = UIColor.red
    self.fourF.backgroundColor = UIColor.red
    self.fourG.backgroundColor = UIColor.red
    self.blueDigitButton.backgroundColor = UIColor.clear
    self.redDigitButton.backgroundColor = UIColor.cyan
    self.yellowDigitButton.backgroundColor = UIColor.clear
    
   
  }
  @IBAction func yellowDigitButtonClicked(_ sender: Any) {
    self.amPMLabel.textColor = UIColor.yellow
    self.colonLabel.textColor = UIColor.yellow
    self.oneA.backgroundColor = UIColor.yellow
    self.oneB.backgroundColor = UIColor.yellow
    self.oneC.backgroundColor = UIColor.yellow
    self.oneD.backgroundColor = UIColor.yellow
    self.oneE.backgroundColor = UIColor.yellow
    self.oneF.backgroundColor = UIColor.yellow
    self.oneG.backgroundColor = UIColor.yellow
    self.twoA.backgroundColor = UIColor.yellow
    self.twoB.backgroundColor = UIColor.yellow
    self.twoC.backgroundColor = UIColor.yellow
    self.twoD.backgroundColor = UIColor.yellow
    self.twoE.backgroundColor = UIColor.yellow
    self.twoF.backgroundColor = UIColor.yellow
    self.twoG.backgroundColor = UIColor.yellow
    self.threeA.backgroundColor = UIColor.yellow
    self.threeB.backgroundColor = UIColor.yellow
    self.threeC.backgroundColor = UIColor.yellow
    self.threeD.backgroundColor = UIColor.yellow
    self.threeE.backgroundColor = UIColor.yellow
    self.threeF.backgroundColor = UIColor.yellow
    self.threeG.backgroundColor = UIColor.yellow
    self.fourA.backgroundColor = UIColor.yellow
    self.fourB.backgroundColor = UIColor.yellow
    self.fourC.backgroundColor = UIColor.yellow
    self.fourD.backgroundColor = UIColor.yellow
    self.fourE.backgroundColor = UIColor.yellow
    self.fourF.backgroundColor = UIColor.yellow
    self.fourG.backgroundColor = UIColor.yellow
    self.blueDigitButton.backgroundColor = UIColor.clear
    self.redDigitButton.backgroundColor = UIColor.clear
    self.yellowDigitButton.backgroundColor = UIColor.cyan
    
   
  }
  
  @IBAction func saveMyData(_ sender: Any) {
    var colors = [UIColor.red:"red", UIColor.blue:"blue", UIColor.black:"black", UIColor.gray: "gray", UIColor.yellow: "yellow", UIColor.lightGray: "gray"]
    
    defaults.set(colors[backGround.backgroundColor!]!,forKey: "backColor")
    defaults.set(colors[oneA.backgroundColor!]!  ,forKey: "digitColor")
    defaults.set(hourFormatOfClock.isOn,forKey: "24Format")
    defaults.set(dateFormatter.timeZone.abbreviation()!, forKey: "timeZone")
  }
  
  func readDataFromDefaults() {
    
    let backColor = defaults.string(forKey: "backColor")
    let digitColor = defaults.string(forKey: "digitColor")
    let twentyFour = defaults.bool(forKey: "24Format")
    let timeZone = defaults.string(forKey: "timeZone")
    
    
    if backColor == "black" {
      self.blackBackGround()
    } else if backColor == "gray" {
      self.grayBackgroundButtonClicked(self.grayBackgroundButton)
    } else {
      self.blueBackgroundButtonClicked(self.blueBackgroundButton)
    }
    
    if digitColor == "blue" {
      blueDigitButtonClicked(blueDigitButton)
    } else if digitColor == "red" {
      redDigitButtonClicked(redDigitButton)
    } else {
      yellowDigitButtonClicked(yellowDigitButton)
    }
    
    if twentyFour  {
      hourFormatOfClock.setOn(true, animated: true)
    } else {
      hourFormatOfClock.setOn(false, animated: true)
    }
    
    if timeZone == "EST" {
      estButtonClicked(estButton)
    } else if timeZone == "CST" {
      cstButtonClicked(cstButton)
    } else {
      pstButtonClicked(pstButton)
    }
   
  }
  
  @IBAction func estButtonClicked(_ sender: Any) {
    dateFormatter.timeZone = TimeZone.init(abbreviation: "EST")
    estButton.backgroundColor = UIColor.cyan
    cstButton.backgroundColor = UIColor.clear
    pstButton.backgroundColor = UIColor.clear
    setTime()
  }
  
  @IBAction func cstButtonClicked(_ sender: Any) {
    dateFormatter.timeZone = TimeZone.init(abbreviation: "CST")
    estButton.backgroundColor = UIColor.clear
    cstButton.backgroundColor = UIColor.cyan
    pstButton.backgroundColor = UIColor.clear
    setTime()
  }
  @IBAction func pstButtonClicked(_ sender: Any) {
    dateFormatter.timeZone = TimeZone.init(abbreviation: "PST")
    estButton.backgroundColor = UIColor.clear
    cstButton.backgroundColor = UIColor.clear
    pstButton.backgroundColor = UIColor.cyan
    setTime()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //myPreference = ClockProperties(backgroundColor: "blueColor", digitColor: "redColor", isTwenty: "NO", timeZone: "EST")
    dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm a"
    dateFormatter.timeZone = TimeZone.current
    
    
   
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
      self.setTime()
    }
    readDataFromDefaults()
  }
  
  func setTime() {
    
    dateFormatter.defaultDate = Date()
    let date = dateFormatter.string(from: Date())
    let times = date.split(separator: " ") as [Any]
    
    currentTime = String(describing: times[0]) as! String
    
    let firstHourIndex = currentTime.index(currentTime.startIndex, offsetBy: 1)
    let secondHourIndex = currentTime.index(currentTime.startIndex, offsetBy: 2)
    
    let startMinIndex = currentTime.index(currentTime.startIndex, offsetBy: 3)
    let firstMinIndex = currentTime.index(currentTime.startIndex, offsetBy: 4)
    
    let secondMinIndex = currentTime.index(currentTime.startIndex, offsetBy: 5)
    
    let startIndex = currentTime.startIndex
    
    let firstHourRange = startIndex..<firstHourIndex
    let secondHourRange = firstHourIndex..<secondHourIndex
    let firstMinRange = startMinIndex..<firstMinIndex
    let secondMinRange = firstMinIndex..<secondMinIndex
    
    var firsHourDigit = String(currentTime[firstHourRange])
    var secondHourDigit = String(currentTime[secondHourRange])
    var firstMinDigit = String(currentTime[firstMinRange])
    var secondMinDigit = String(currentTime[secondMinRange])
    updateFirstHourDigit(hour: firsHourDigit)
    updateSecondHourDigit(hour: secondHourDigit)
    updateFirstMiniteDigit(min: firstMinDigit)
    updateSecondMinDigit(min: secondMinDigit)
    if let amPM =  String(describing: times[1]) as? String {
      self.amPMLabel.text = amPM
    }
  }
  
  
  func updateFirstHourDigit(hour: String) {
    if hour == "0" {
      self.oneA.isHidden = true
      self.oneB.isHidden = true
      self.oneC.isHidden = true
      self.oneD.isHidden = true
      self.oneE.isHidden = true
      self.oneF.isHidden = true
      self.oneG.isHidden = true
    } else if hour == "1" {
      self.oneA.isHidden = true
      self.oneB.isHidden = true
      self.oneC.isHidden = true
      self.oneD.isHidden = true
      self.oneE.isHidden = true
      self.oneF.isHidden = false
      self.oneG.isHidden = false
    } else {
      self.oneA.isHidden = false
      self.oneB.isHidden = true
      self.oneC.isHidden = false
      self.oneD.isHidden = false
      self.oneE.isHidden = false
      self.oneF.isHidden = true
      self.oneG.isHidden = false
    }
  }
  
  func updateSecondHourDigit(hour: String) {
    if hour == "0" {
      self.twoA.isHidden = false
      self.twoB.isHidden = false
      self.twoC.isHidden = true
      self.twoD.isHidden = false
      self.twoE.isHidden = false
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    } else if hour == "1" {
      self.twoA.isHidden = true
      self.twoB.isHidden = true
      self.twoC.isHidden = true
      self.twoD.isHidden = true
      self.twoE.isHidden = true
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    } else if hour == "2" {
      self.twoA.isHidden = false
      self.twoB.isHidden = true
      self.twoC.isHidden = false
      self.twoD.isHidden = false
      self.twoE.isHidden = false
      self.twoF.isHidden = true
      self.twoG.isHidden = false
    } else if hour == "3" {
      self.twoA.isHidden = false
      self.twoB.isHidden = true
      self.twoC.isHidden = false
      self.twoD.isHidden = true
      self.twoE.isHidden = false
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    } else if hour == "4" {
      self.twoA.isHidden = true
      self.twoB.isHidden = false
      self.twoC.isHidden = false
      self.twoD.isHidden = true
      self.twoE.isHidden = true
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    } else if hour == "5" {
      self.twoA.isHidden = false
      self.twoB.isHidden = false
      self.twoC.isHidden = false
      self.twoD.isHidden = true
      self.twoE.isHidden = false
      self.twoF.isHidden = false
      self.twoG.isHidden = true
    } else if hour == "6" {
      self.twoA.isHidden = false
      self.twoB.isHidden = false
      self.twoC.isHidden = false
      self.twoD.isHidden = false
      self.twoE.isHidden = false
      self.twoF.isHidden = false
      self.twoG.isHidden = true
    } else if hour == "7" {
      self.twoA.isHidden = false
      self.twoB.isHidden = false
      self.twoC.isHidden = true
      self.twoD.isHidden = true
      self.twoE.isHidden = true
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    } else if hour == "8" {
      self.twoA.isHidden = false
      self.twoB.isHidden = false
      self.twoC.isHidden = false
      self.twoD.isHidden = false
      self.twoE.isHidden = false
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    } else {
      self.twoA.isHidden = false
      self.twoB.isHidden = false
      self.twoC.isHidden = false
      self.twoD.isHidden = true
      self.twoE.isHidden = false
      self.twoF.isHidden = false
      self.twoG.isHidden = false
    }
    
  }
  
  
  
  func updateFirstMiniteDigit(min: String) {
    if min == "0" {
      self.threeA.isHidden = false
      self.threeB.isHidden = false
      self.threeC.isHidden = true
      self.threeD.isHidden = false
      self.threeE.isHidden = false
      self.threeF.isHidden = false
      self.threeG.isHidden = false
    } else if min == "1" {
      self.threeA.isHidden = true
      self.threeB.isHidden = true
      self.threeC.isHidden = true
      self.threeD.isHidden = true
      self.threeE.isHidden = true
      self.threeF.isHidden = false
      self.threeG.isHidden = false
    } else if min == "2" {
      self.threeA.isHidden = false
      self.threeB.isHidden = true
      self.threeC.isHidden = false
      self.threeD.isHidden = false
      self.threeE.isHidden = false
      self.threeF.isHidden = true
      self.threeG.isHidden = false
    } else if min == "3" {
      self.threeA.isHidden = false
      self.threeB.isHidden = true
      self.threeC.isHidden = false
      self.threeD.isHidden = true
      self.threeE.isHidden = false
      self.threeF.isHidden = false
      self.threeG.isHidden = false
    } else if min == "4" {
      self.threeA.isHidden = true
      self.threeB.isHidden = false
      self.threeC.isHidden = false
      self.threeD.isHidden = true
      self.threeE.isHidden = true
      self.threeF.isHidden = false
      self.threeG.isHidden = false
    } else {
      self.threeA.isHidden = false
      self.threeB.isHidden = false
      self.threeC.isHidden = false
      self.threeD.isHidden = true
      self.threeE.isHidden = false
      self.threeF.isHidden = false
      self.threeG.isHidden = true
    }
    
  }
  func updateSecondMinDigit(min: String) {
    if min == "0" {
      self.fourA.isHidden = false
      self.fourB.isHidden = false
      self.fourC.isHidden = true
      self.fourD.isHidden = false
      self.fourE.isHidden = false
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    } else if min == "1" {
      self.fourA.isHidden = true
      self.fourB.isHidden = true
      self.fourC.isHidden = true
      self.fourD.isHidden = true
      self.fourE.isHidden = true
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    } else if min == "2" {
      self.fourA.isHidden = false
      self.fourB.isHidden = true
      self.fourC.isHidden = false
      self.fourD.isHidden = false
      self.fourE.isHidden = false
      self.fourF.isHidden = true
      self.fourG.isHidden = false
    } else if min == "3" {
      self.fourA.isHidden = false
      self.fourB.isHidden = true
      self.fourC.isHidden = false
      self.fourD.isHidden = true
      self.fourE.isHidden = false
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    } else if min == "4" {
      self.fourA.isHidden = true
      self.fourB.isHidden = false
      self.fourC.isHidden = false
      self.fourD.isHidden = true
      self.fourE.isHidden = true
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    } else if min == "5" {
      self.fourA.isHidden = false
      self.fourB.isHidden = false
      self.fourC.isHidden = false
      self.fourD.isHidden = true
      self.fourE.isHidden = false
      self.fourF.isHidden = false
      self.fourG.isHidden = true
    } else if min == "6" {
      self.fourA.isHidden = false
      self.fourB.isHidden = false
      self.fourC.isHidden = false
      self.fourD.isHidden = false
      self.fourE.isHidden = false
      self.fourF.isHidden = false
      self.fourG.isHidden = true
    } else if min == "7" {
      self.fourA.isHidden = false
      self.fourB.isHidden = false
      self.fourC.isHidden = true
      self.fourD.isHidden = true
      self.fourE.isHidden = true
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    } else if min == "8" {
      self.fourA.isHidden = false
      self.fourB.isHidden = false
      self.fourC.isHidden = false
      self.fourD.isHidden = false
      self.fourE.isHidden = false
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    } else {
      self.fourA.isHidden = false
      self.fourB.isHidden = false
      self.fourC.isHidden = false
      self.fourD.isHidden = true
      self.fourE.isHidden = false
      self.fourF.isHidden = false
      self.fourG.isHidden = false
    }
  }
}

