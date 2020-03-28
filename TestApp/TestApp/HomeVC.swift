//
//  HomeVC.swift
//  TestApp
//
//  Created by Anilkumar on 28/03/20.
//  Copyright © 2020 AIT. All rights reserved.
//

import UIKit
import AppCenterAnalytics

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HockeyApp Test"
    }

    @IBAction func actionGenerateCrash(_ sender: Any) {
        MSAnalytics.trackEvent("Generating Crash")
        let array: [String] = []
        print(array[0])
    }
    @IBAction func actionGetBuildVersion(_ sender: Any) {
        let versionAlert = UIAlertController(title: "Version Alert", message: "The Current Version is \(String(describing: Bundle.main.buildVersionNumber))", preferredStyle: .alert)
        versionAlert.addAction(UIAlertAction(title: "Accept", style: .default) { (action:UIAlertAction!) in
                print("Selected")
            })
            self.present(versionAlert, animated: true)
    }
}
extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    var releaseVersionNumberPretty: String {
        return "v\(releaseVersionNumber ?? "1.0.0")"
    }
}
