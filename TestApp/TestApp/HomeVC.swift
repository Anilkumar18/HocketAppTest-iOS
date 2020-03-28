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
        //testtesttetstest
        // Do any additional setup after loading the view.
    }

    @IBAction func actionGenerateCrash(_ sender: Any) {
        MSAnalytics.trackEvent("Generating Crash")
        let array: [String] = []
        print(array[0])
    }
}
