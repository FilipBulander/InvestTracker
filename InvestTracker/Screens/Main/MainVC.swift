//
//  MainVC.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import UIKit
import SwiftUI

class MainVC: UIViewController {
    private var vm: MainVM
    
    init(vm: MainVM) {
        self.vm = vm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rootView = MainView()
        let hostingController = UIHostingController(rootView: rootView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        hostingController.didMove(toParent: self)
    }
}
