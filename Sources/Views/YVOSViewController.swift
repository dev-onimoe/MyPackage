//
//  YVOSViewController.swift
//  
//
//  Created by Masud Onikeku on 01/06/2023.
//

import UIKit
import SafariServices

public class YVOSViewController: UIViewController {
    
    let back = UIView()
    let loader = UIActivityIndicatorView()
    
    let viewModel = ViewModel()
    var id = ""
    
    var vformOptions : vFormOptions? = nil
    var livenessOptions : LivenessOptions? = nil
    var documentOptions : DocumentOptions? = nil
    
    init(vformOptions: vFormOptions?) {
        
        self.vformOptions = vformOptions
        super.init(nibName: nil, bundle: nil)
    }
    
    init(livenessOptions: LivenessOptions?) {
        
        self.livenessOptions = livenessOptions
        super.init(nibName: nil, bundle: nil)
    }
    
    init(documentOptions: DocumentOptions?) {
        
        self.documentOptions = documentOptions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setup()
        bindings()
        
        
    }
    
    func bindings() {
        
        viewModel.AccessResponse.bind(completion: {[weak self] response in
            
            if response != nil {
                
                if let accessResp = response!.object as? AccessPointResponse {
                    
                    if let options = self?.vformOptions {
                        
                        if self!.validate(key: options.publicMerchantKey, formId: options.vFormId) {
                            
                                if let info = options.personalInfo {
                                    
                                    if info.firstName != nil {
                                        
                                        self?.showWelcomeDialog(options: options)
                                    }
                                }else {
                                    
                                    self?.id = accessResp.data.id
                                    let baseUrl = options.dev ? Constants.devUrl : Constants.prodUrl
                                    let formUrl = "\(baseUrl)/v-forms/\(options.vFormId)?accessid=\(accessResp.data.id)"
                                    self?.openFormWeb(url: formUrl)
                                }
                            
                        }
                        
                        
                    }
                }
            }
        })
    }
    
    private func setup() {
        
        let reg = HomeView()
        //reg.button.addTarget(self, action: #selector(openWeb), for: .touchUpInside)
        self.view.addSubview(reg)
        reg.centre(centerX: self.view.centerXAnchor, centreY: self.view.centerYAnchor)
        
        reg.vForms.addTarget(self, action: #selector(openVForms), for: .touchUpInside)
        reg.documentCapture.addTarget(self, action: #selector(openDocumentCapture), for: .touchUpInside)
        reg.livenessCheck.addTarget(self, action: #selector(openLivenessCheck), for: .touchUpInside)
    }
    
    func openFormWeb(url: String) {
        
        if let url = URL(string: url) {
            
            let vc = SFSafariViewController(url: url)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
    
    }
    
    @objc func openVForms() {
        
        showLoader(back: back, loader: loader)
        
        if let options = vformOptions {
            
            viewModel.requestFormId(dev: options.dev)
        }
        
        
    }
    
    @objc func openLivenessCheck() {
        
        
    }
    
    @objc func openDocumentCapture() {
        
       
    }
    
    func showWelcomeDialog(options: Options) {
        
        
    }
    
    @objc func showFormWeb() {
        
        if let options = vformOptions {
            
            let baseUrl = options.dev ? Constants.devUrl : Constants.prodUrl
            let formUrl = "\(baseUrl)/v-forms/\(options.vFormId)?accessid=\(id)"
            openFormWeb(url: formUrl)
        }
    }
    
    func validate(key: String, formId: String) -> Bool {
        
        if key.isEmpty || key.count != Constants.idLength || formId.isEmpty || formId.count != Constants.idLength {
            
            return false
        }else {
            
            return true
        }
        
    }
}
