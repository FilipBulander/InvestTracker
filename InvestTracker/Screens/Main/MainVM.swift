//
//  MainVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import Foundation
import SwiftUI

class MainVM: ObservableObject {
    private var router: MainRouter
    
    var listVM: ListVM
    
    init(router: MainRouter) {
        self.router = router
        listVM = ListVM()
    }
}


