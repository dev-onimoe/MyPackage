public struct MyLibrary {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public var workFlowBuilderUrl: String? = "https://os.dev.youverify.co"

public struct vForms {
    public var baseUrl: String? = "\(workFlowBuilderUrl)/v-forms/"
    public var formId: String? = "YOUR_FORM_ID_GOES_HERE"
    public var merchantKey: String? = "YOUR_MERCHANT_KEY_GOES_HERE"
    public var dev: Bool = false
    
    public init() {}
}

// This struct is for Document Capture
public struct documentCapture {
    public var baseUrl: String? = "https://os.dev.youverify.co/services/"
    public var formId: String? = "YOUR_FORM_ID_GOES_HERE"
    public var merchantKey: String? = "YOUR_MERCHANT_KEY_GOES_HERE"
    public var dev: Bool = false
    
    public init() {}
}

// This struct is for Liveness check
public struct livenessCheck {
    public var baseUrl: String? = "https://os.dev.youverify.co/services/"
    public var formId: String? = "YOUR_FORM_ID_GOES_HERE"
    public var merchantKey: String? = "YOUR_MERCHANT_KEY_GOES_HERE"
    public var dev: Bool = false
    
    public init() {}
}
