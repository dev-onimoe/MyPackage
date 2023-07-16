//
//  File.swift
//  
//
//  Created by Masud Onikeku on 10/07/2023.
//

import Foundation
import UIKit


public class vFormOptions : Options {
    
    public let vFormId : String
    public let publicMerchantKey : String
    let dev = true
    let sandboxEnvironment = true
    let onSuccess : (VFormsEntryData?) -> Void = {_ in}
    let onFailed : (VFormsEntryData?) -> Void = {_ in }
    let onCompleted : (VFormsEntryData?) -> Void = {_ in }
    public let personalInfo : PersonalInfo?
    let appearance : Appearance? = Appearance()
    let metadata : [String : Any]? = nil
    
    public init(vFormId: String, publicMerchantKey: String, personalInfo: PersonalInfo?) {
        self.vFormId = vFormId
        self.publicMerchantKey = publicMerchantKey
        self.personalInfo = personalInfo
    }
}

public struct Appearance {
    
    var greeting : String? = "We will need to verify your identity. It will only take a moment."
    var actionText = "Verify Identity"
    var bTnTextColor = UIColor.white
    var primaryColor = UIColor.white
    var btnBackgroundColor = UIColor.black
}

public struct PersonalInfo {
    
    let firstName : String?
    let lastname : String? = "Onikeku"
    let middleName : String? = "Olakunle"
    let email : String? = "masud@youverify.co"
    let phone : String? = "+2348166176757"
    let gender : Gender? = Gender.Male
}

public struct VFormsEntryData {
    
    let id : String
    let fields : [[String : Any?]]
}




enum Gender {
    
    case Male
    case Female
}
