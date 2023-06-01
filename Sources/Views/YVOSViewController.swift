//
//  YVOSViewController.swift
//  
//
//  Created by Masud Onikeku on 01/06/2023.
//

import UIKit
import SafariServices

public class YVOSViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setup()
    }
    
    private func setup() {
        
        let reg = RegularView(frame: self.view.frame)
        reg.button.addTarget(self, action: #selector(openWeb), for: .touchUpInside)
        self.view.addSubview(reg)
    }
    
    @objc func openWeb() {
        
        if let url = URL(string: "https://os.dev.youverify.co/v-forms/644933b8c451436821dac571") {
            
            let vc = SFSafariViewController(url: url)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
    }
}
