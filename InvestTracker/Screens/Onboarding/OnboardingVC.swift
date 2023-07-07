//
//  OnboardingVC.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import UIKit
import SnapKit
import SwiftUI

class OnboardingVC: UIViewController {
    
    private var vm: OnboardingVM

    init(vm: OnboardingVM) {
        self.vm = vm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rootView = OnboardingView(vm: vm)
        let hostingController = UIHostingController(rootView: rootView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        hostingController.didMove(toParent: self)
    }
}
