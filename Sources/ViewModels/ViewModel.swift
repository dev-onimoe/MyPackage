//
//  File.swift
//  
//
//  Created by Masud Onikeku on 15/07/2023.
//

import Foundation

class ViewModel {
    
    
    var AccessResponse : Observable<Response?> = Observable(nil)
    var identityResponse : Observable<Response?> = Observable(nil)
    
    func requestFormId(dev: Bool) {
        
        Service.requestData(dev: dev, url: "v-forms/access-points/", method: .post, parameters: nil, completion: {[weak self] response in
            
            self?.AccessResponse.value = response
        })
    }
}
