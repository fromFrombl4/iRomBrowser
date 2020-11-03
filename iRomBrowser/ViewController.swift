//
//  ViewController.swift
//  iRomBrowser
//
//  Created by Roman Dod on 10/30/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var bottomMenuOutlet: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    @IBOutlet weak var shareButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var addButtonOutlet: UIButton!
    @IBOutlet weak var forwardButtonOutlet: UIButton!
    @IBOutlet weak var goButtonOutlet: UIButton!
    @IBOutlet weak var wkWebViewOutlet: UIView!
    
//    var isLoading: Bool = false
    var webView: WKWebView!
    var url: String = "https://www.instagram.com/roma_dod.io"
    
    
    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: wkWebViewOutlet.frame, configuration: webConfiguration)
//        webView.uiDelegate = self
//        wkWebViewOutlet = webView
//        wkWebViewOutlet.addSubview(webView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: wkWebViewOutlet.bounds, configuration: WKWebViewConfiguration())
        wkWebViewOutlet.addSubview(webView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let request = URLRequest(url: URL(string: url)!)
        webView.load(request)
//        let wkWebView = WKWebView(frame: wkWebViewOutlet.frame)
//
//        self.wkWebViewOutlet.addSubview(wkWebView)
//
//        guard let url = URL(string: url) else { return }
//        let request = URLRequest(url: url)
//        wkWebView.load(request)
    }

    @IBAction func pressedCancelButton(_ sender: UIButton) {
        if webView.isLoading == true {
            webView.stopLoading()
        }
    }
    
    @IBAction func pressedShareButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedBackButton(_ sender: UIButton) {
        if webView.canGoBack == true {
            webView.goBack()
        }
    }
    
    @IBAction func pressedAddButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedForwardButton(_ sender: UIButton) {
        if webView.canGoForward == true {
            webView.goForward()
        }
    }
    
    @IBAction func pressedGoButton(_ sender: UIButton) {
        
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    
}
