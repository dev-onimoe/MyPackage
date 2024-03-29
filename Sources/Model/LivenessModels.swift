//
//  File.swift
//  
//
//  Created by Masud Onikeku on 10/07/2023.
//

import Foundation

public class LivenessOptions : Options {
    
    let publicMerchantKey : String
    let dev = false
    let metadata : [String : Any]? = nil
    let personalInfo : LivenessPersonalInfo?
    let appearance = Appearance(greeting: "We will need to carry out a liveness check. It will only take a moment.", actionText: "Start Liveness Test")
    let onSuccess : (LivenessData?) -> Void = {_ in}
    let onFailure : (LivenessData?) -> Void =  {_ in}
    let onClosed : (LivenessData?) -> Void =  {_ in}
    let onCancelled : (LivenessData?) -> Void = {_ in}
    let onRetry : (LivenessData?) -> Void = {_ in}
    
    public init(publicMerchantKey: String, personalInfo: LivenessPersonalInfo? = nil) {
        
        self.publicMerchantKey = publicMerchantKey
        self.personalInfo = personalInfo
    }
}

public struct LivenessPersonalInfo {
    
    let firstName : String? = ""
    let lastName : String? = ""
}

public struct LivenessData {
    
    let passed : Bool
    let photo : String?
}
