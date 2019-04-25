//
//  AboutViewController.swift
//  BullsEye
//
//  Created by KJG on 2019-04-23.
//  Copyright © 2019 KJG. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
//            let url = URL(fileURLWithPath: htmlPath)
//            let request = URLRequest(url: url)
//            webView.load(request)
//        }
        
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
