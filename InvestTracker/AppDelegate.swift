//
//  AppDelegate.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import Swinject
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var navigationController: UINavigationController?
    
    var container: Container = Container()
    lazy var resolver: Swinject.Resolver = container.synchronize()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        navigationController = NavigationController()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        registerDependencies()
        let router = AppRouter(navigationController: navigationController)
        router.start()
        return true
    }
    
    private func registerDependencies() {
        container.register(DatabaseInteractorType.self) { _ in 
            DatabaseInteractor()
        }
        .inObjectScope(.container)
        
        InjectSettings.resolver = SwinjectSynchronizedResolver()
    }
}
