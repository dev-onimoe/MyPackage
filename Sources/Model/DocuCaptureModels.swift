//
//  File.swift
//  
//
//  Created by Masud Onikeku on 10/07/2023.
//

import Foundation

class DocumentOptions : Options {
    
    let publicMerchantKey : String = ""
    let dev = false
    let metadata : [String : Any]? = nil
    let personalInfo : DocumentPersonalInfo? = nil
    let appearance = Appearance(greeting: "We will need to carry out a  document capture. It will only take a moment.", actionText: "Start Document Capture")
    let onSuccess : (LivenessData?) -> Void = {_ in}
    let onClosed : (LivenessData?) -> Void = {_ in}
    let onCancelled : (LivenessData?) -> Void = {_ in}
    let countries : [Country]?  = nil
}

struct Country{
    let countryCode: String = ""
    let idTypes: [String] = []
    let province: [String]  = []
}

struct DocumentPersonalInfo {
    
    let firstName : String? = ""
    
}



enum DocumentType : String {
    case NATIONAL_ID = "national_id"
    case VOTERS_CARD = "voters_card"
    case DRIVERS_LICENSE = "drivers_license"
    case DRIVERS_CARD = "drivers_card"
    case PASSPORT = "passport"
    case ID_CARD = "id_card"
    case PROFESSIONAL_DL = "professional_dl"
    case ALIEN_ID = "alien_id"
    case PROOF_OF_AGE_CARD = "proof_of_age_card"
    case ID_CARDB = "id_cardb"
    case MINORS_CARD = "minors_card"
    case RESIDENCE_PERMIT = "residence_permit"
    case TEMPORARY_RESIDENCE_PERMIT = "temporary_residence_permit"
    case CITIZENSHIP_CERTIFICATE = "citizenship_certificate"
    case TRIBAL_ID = "tribal_id"
    case WEAPON_PERMIT = "weapon_permit"
    case PUBLIC_SERVICES_CARD = "public_services_card"
    case CONSULAR_ID = "consular_id"
    case PAN_CARD = "pan_card"
    case TAX_ID = "tax_id"
    case MILITARY_ID = "military_id"
    case MY_KAS = "my_kas"
    case MY_KAD = "my_kad"
    case MY_KID = "my_kid"
    case MY_PR = "my_pr"
    case MY_POLIS = "my_polis"
    case REFUGEE_ID = "refugee_id"
    case I_KAD = "i-kad"
    case FIN_CARD = "fin_card"
    case WORK_PERMIT = "work_permit"
    case SOCIAL_SECURITY_CARD = "social_security_card"
    case GREEN_CARD = "green_card"
    case NEXUS_CARD = "nexus_card"
    
}
