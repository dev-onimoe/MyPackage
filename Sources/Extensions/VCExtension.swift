//
//  File.swift
//  
//
//  Created by Masud Onikeku on 13/07/2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlert(msg: String) {
        
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        present(alert, animated: true)
    }
    
    func showLoader(back: UIView, loader: UIActivityIndicatorView) {
        
        //let back = UIView()
        back.backgroundColor = .white
        view.addSubview(back)
        back.constraint(equalToTop: view.topAnchor, equalToBottom: view.bottomAnchor, equalToLeft: back.leadingAnchor, equalToRight: back.trailingAnchor)
        
        //let loader = UIActivityIndicatorView()
        loader.constraint(width: 50, height: 50)
        loader.tintColor = .black
        back.addSubview(loader)
        loader.centre(centerX: back.centerXAnchor, centreY: back.centerYAnchor)
        loader.startAnimating()
    }
}
