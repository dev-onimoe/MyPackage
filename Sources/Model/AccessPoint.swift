//
//  File.swift
//  
//
//  Created by Masud Onikeku on 15/07/2023.
//

import Foundation



struct AccessPointResponse : Codable {
    
    let data: AccessPointData
    let links: [Any]
    let details: [String : String] = [:]
    let message: String
    let statusCode: Int
    let success: Bool
}

struct AccessPointData : Codable {
    
    let _createdAt: String
    let _lastModifiedAt: String
    let createdAt: String
    let creatorId: Any
    let details: Any
    let id: String
    let lastModifiedAt: String
    let mode: String
    let templateId: String
}
