//
//  File.swift
//  
//
//  Created by Masud Onikeku on 15/07/2023.
//

import Foundation



struct AccessPointResponse : Codable {
    
    let data: AccessPointData
    let links: [String]
    let details: [String : String] = [:]
    let message: String
    let statusCode: Int
    let success: Bool
}

struct AccessPointData : Codable {
    
    let _createdAt: String
    let _lastModifiedAt: String
    let createdAt: String
    let creatorId: String
    let details: String
    let id: String
    let lastModifiedAt: String
    let mode: String
    let templateId: String
}
