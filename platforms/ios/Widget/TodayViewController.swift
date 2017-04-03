//
//  TodayViewController.swift
//  Widget
//
//  Created by Jan Piotrowski on 4/3/17.
//
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        let path = Bundle.main.path(forResource: "index", ofType: "html", inDirectory:"www")
        let url = URL(string: path!)
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        self.webView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
