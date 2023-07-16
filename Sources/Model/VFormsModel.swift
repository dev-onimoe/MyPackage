//
//  File.swift
//  
//
//  Created by Masud Onikeku on 10/07/2023.
//

import Foundation
import UIKit


public class vFormOptions : Options {
    
    let vFormId : String
    let publicMerchantKey : String
    let dev = true
    let sandboxEnvironment = true
    let onSuccess : (VFormsEntryData?) -> Void = {_ in}
    let onFailed : (VFormsEntryData?) -> Void = {_ in }
    let onCompleted : (VFormsEntryData?) -> Void = {_ in }
    let personalInfo : PersonalInfo?
    let appearance : Appearance? = Appearance()
    let metadata : [String : Any]? = nil
    
    init(vFormId: String, publicMerchantKey: String, personalInfo: PersonalInfo?) {
        self.vFormId = vFormId
        self.publicMerchantKey = publicMerchantKey
        self.personalInfo = personalInfo
    }
}

struct Appearance {
    
    var greeting : String? = "We will need to verify your identity. It will only take a moment."
    var actionText = "Verify Identity"
    var bTnTextColor = UIColor.white
    var primaryColor = UIColor.white
    var btnBackgroundColor = UIColor.black
}

struct PersonalInfo {
    
    let firstName : String?
    let lastname : String? = "Onikeku"
    let middleName : String? = "Olakunle"
    let email : String? = "masud@youverify.co"
    let phone : String? = "+2348166176757"
    let gender : Gender? = Gender.Male
}

struct VFormsEntryData {
    
    let id : String
    let fields : [[String : Any?]]
}




enum Gender {
    
    case Male
    case Female
}
