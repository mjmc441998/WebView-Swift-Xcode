//
//  ViewController.swift
//  MJMC
//
//  Created by MJMC on 4/05/21.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.facebook.com/mjmc4498/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}
