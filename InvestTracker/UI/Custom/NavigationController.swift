//
//  NavigationController.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import UIKit

class NavigationController : UINavigationController {
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        
        if let topVC = viewControllers.last {
            return topVC.preferredStatusBarStyle
        }
        
        return .default
    }
    
}
