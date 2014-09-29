// Playground - noun: a place where people can play

import UIKit
import SwiftyJSON
import Alamofire
import HealthKit

// read up on the HealthKit Framework:
// https://developer.apple.com/library/ios/documentation/HealthKit/Reference/HealthKit_Framework/index.html#//apple_ref/doc/uid/TP40014707

let meters = HKUnit.meterUnit()

// HKQuantity stores the value for a given unit
// I'm guessing you use HKUnit to set the unit of the HKQuantity
// Then convert the HKQuantity with other HKUnit refs/methods
// Legal work required for HealthKit App... T&C

// Remarks from FrameWork Reference:
// - If the user consents, you may share his or her HealthKit data with a third party for medical research.

