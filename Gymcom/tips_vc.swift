//
//  tips_vc.swift
//  Gymcom
//
//  Created by LOKESH on 09/02/24.
//

import UIKit
import WebKit

class tips_vc: UIViewController {

    @IBOutlet var webview: WKWebView!
    let activityIndicator = UIActivityIndicatorView(style: .large)

    
    override func viewDidLoad() 
    {
        super.viewDidLoad()

        // Set up activity indicator properties
        activityIndicator.color = .red
        activityIndicator.hidesWhenStopped = true
        
        // Add activity indicator to view hierarchy and center it
        view.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // Start animating the activity indicator
        activityIndicator.startAnimating()
        
        // Simulate a long-running task
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.activityIndicator.stopAnimating()
        }
        
        // web view
        webview.load(NSURLRequest(url: NSURL(string:"https://fitbod.me/blog/gym-tips-for-beginners/")!as URL) as URLRequest)
        
    }
    

  

}
