//
//  SplashController.swift
//  OZM
//
//  Created by Semyon Novikov on 11/09/15.
//  Copyright (c) 2015 ozm. All rights reserved.
//

import Foundation
import UIKit
import PromiseKit

class SplashController: UIViewController {
    override func viewDidLoad() {
        APIClient.registerDevice("test").then { _ in
            navigation.pushViewController(MainViewController(), animated: false)
        }
        .catch_ { error in
            print(error)
        }
    }
}