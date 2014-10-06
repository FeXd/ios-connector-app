import UIKit
import SwiftyJSON
import Alamofire
import HealthKit

// read up on the HealthKit Framework:
// https://developer.apple.com/library/ios/documentation/HealthKit/Reference/HealthKit_Framework/index.html#//apple_ref/doc/uid/TP40014707

println("Now: \(NSDate())")

// Testing Unit Conversion
var massNumber = 40.0

let weightType = HKObjectType.quantityTypeForIdentifier(HKQuantityTypeIdentifierBodyMass)
let weightValue = HKQuantity(unit: HKUnit(fromString: "kg"), doubleValue: massNumber)
let metadata = [ HKMetadataKeyWasUserEntered : true ]
let sample = HKQuantitySample(type: weightType, quantity: weightValue,
    startDate: NSDate(), endDate: NSDate(), metadata: metadata)

println("Weight in KG: \(weightValue)")
println("Weight in Pound: \(weightValue.doubleValueForUnit(HKUnit.poundUnit()))")
println("Weight in Grams: \(weightValue.doubleValueForUnit(HKUnit.gramUnit()))")


