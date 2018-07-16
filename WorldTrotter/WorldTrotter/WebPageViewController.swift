//
//  WebPageViewController.swift
//  WorldTrotter
//
//  Created by Andrew Garner on 7/15/18.
//  Copyright © 2018 Andrew Garner. All rights reserved.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("WebPageVC view loaded")
        
        let myUrl = URL(string: "http://www.google.com")
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
        
    }
}
