// Playground - noun: a place where people can play

import UIKit
import SwiftyJSON
import Alamofire

var jsonString : [String: AnyObject] = [
    "stat": "ok",
    "blogs": [
        "blog": [
            [
                "id" : 73,
                "name" : "Bloxus test",
                "needspassword" : true,
                "url" : "http://remote.bloxus.com/"
            ],
            [
                "id" : 74,
                "name" : "Manila Test",
                "needspassword" : false,
                "url" : "http://flickrtest1.userland.com/"
            ]
        ]
    ]
]
let json = JSONValue(jsonString)
println("after")
println("json: \(json)")
println("json[0]: \(json[0])")
if let date = json[0]["Date"].string{
    println("Date: \(date)")
}

