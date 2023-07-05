//
//  OnboardingVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import SwiftUI

class OnboardingVM: ObservableObject {
    private var router: OnboardingRouter
    
    //TODO This is not bulletproof
    private let countOfScreens = 6
    
    var divideCategoryVM: DivideCategoryOnboardingVM
    
    
    
    @Published var checklistVM: ChecklistCategoryOnboardingVM
    @Published var tabSelection = 0 {
        didSet {
            isLastPage = tabSelection >= countOfScreens - 1
        }
    }
    @Published var isLastPage = false
    
    init(router: OnboardingRouter) {
        self.router = router
        checklistVM = ChecklistCategoryOnboardingVM()
        divideCategoryVM = DivideCategoryOnboardingVM()
    }
    
    func onAppear() {
        //TODO not sure if I like this approach
        divideCategoryVM.noCallback =  { [weak self] in
            self?.tabSelection += 1
        }
        divideCategoryVM.yesCallback = { [weak self] in
            self?.showCategoryDividing()
        }
    }
    
    func onFinish() {
        router.onFinish()
    }
    
    func showCategoryDividing() {
        // TODO show divide categories screen -  move it to either app router or keep it here
        nextPageTapped()
    }
    
    func nextPageTapped() {
        withAnimation {
            tabSelection += 1
        }
    }
}
