//
//  Caller.swift
//  mHealth
//
//  Created by Guillermo Kardolus on 9/17/14.
//  Copyright (c) 2014 Open mHealth. All rights reserved.
//

import Foundation
import Alamofire

class Caller {
    func connect(){
        println("HTTP Request Starts...")
        let endpoint = "http://httpbin.org/get"
        
        Alamofire.request(.GET, endpoint, parameters: ["foo": "bar"])
            .responseJSON { (request, response, jsonString, error) in
                
                let json = JSONValue(jsonString!)
                println("json: \(json)")
                
                if let element = json["origin"].string{
                    println("json element: \(element)")
                }
        }
        
        println("HTTP Request Finishes...")
    }
}
