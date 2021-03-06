//
//  GlobalVariables.swift
//  integratr
//
//  Created by Adam Bujak on 2018-06-19.
//  Copyright © 2018 Adam Bujak. All rights reserved.
//

import Foundation
import UIKit
class GlobalVariables: UIViewController {
    static var MACID = ""
    static var PASSWORD = ""
    static var signInStatusLabel: UILabel = UILabel()
    static var webView = WebView()
    static var mainQueue = FunctionQueue()
    static var macidField: UITextField!
    static var passwordField: UITextField!
    static var signInButton: UIButton!
    static var libView = WebView()
    static func execute(function: @escaping () -> Void) {  // use this to send something to the response queue, if web view isn't loading it executes right away
        print(GlobalVariables.webView.webView.isLoading)
        if GlobalVariables.webView.webView.isLoading {
            GlobalVariables.mainQueue.add(function: function)
        }
        else{
            function()
        }
    }
}
