//
//  Authenticator.swift
//  mHealth
//
//  Created by Guillermo Kardolus on 9/23/14.
//  Copyright (c) 2014 Open mHealth. All rights reserved.
//

import Foundation
import Security

class Authenticator{
    func connect(){
        /*
        * In iOS the keychain does not need to be unlocked. This step is ommitted, each application
        * can always access its own keychain items.
        *
        * Keychain values are stored in key-value pairs [see iOS Keychain Services Search Dictionaries]
        * 
        * Important Functions from the Security Class:
        * SecItemAdd to add an item to a keychain
        * SecItemUpdate to modify an existing keychain item
        * SecItemCopyMatching to find a keychain item and extract information from it
        * 
        * Typical Authentication Flow:
        * https://developer.apple.com/library/ios/documentation/Security/Conceptual/keychainServConcepts/iPhoneTasks/iPhoneTasks.html
        */
        println("Key Chain Client Starts...")
        
        // Add a Key Chain value
        var secret: NSData! = "Top Secret".dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
        let query = NSDictionary(objects: [kSecClassGenericPassword, "mHealthDSU", "testAccount", secret],
            forKeys: [kSecClass, kSecAttrService, kSecAttrAccount, kSecValueData])
        
        let addStatus = SecItemAdd(query as CFDictionaryRef, nil)
        
        // Retreive a Key Chain value
        let queryAttributes = NSDictionary(objects: [kSecClassGenericPassword, "mHealthDSU", "testAccount", true],
            forKeys: [kSecClass, kSecAttrService, kSecAttrAccount, kSecReturnData])
        var dataTypeRef :Unmanaged<AnyObject>?
        
        let status = SecItemCopyMatching(queryAttributes, &dataTypeRef)
        let opaque = dataTypeRef?.toOpaque()
        
        if let op = opaque? {
            let retrievedData = Unmanaged<NSData>.fromOpaque(op).takeUnretainedValue()
            if (retrievedData.length == 0){
                println("No data retrieved from KeyChain")
            }else{
                println("Retreived Date From KeyChain: \(retrievedData)")
            }
        }
        
        println("Key Chain Client Finished...")
    }
}