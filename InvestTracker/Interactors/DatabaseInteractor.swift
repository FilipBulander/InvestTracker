//
//  DatabaseInteractor.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import Foundation
import RealmSwift

protocol DatabaseInteractorType {
    func setupDatabase(id: String)
    func addCategory(category: CategoryType)
    func getAllCategories() -> [CategoryType]
    func updateCategory()
    func removeCategory()
    func removeAllCategories()
}

class DatabaseInteractor {
    private let realm: Realm
    
    init() {
        realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
        }
    }
}

extension DatabaseInteractor: DatabaseInteractorType {
    func setupDatabase(id: String) {
        
    }
    
    func addCategory(category: CategoryType) {
        try! realm.write {
            realm.add(CategoryDB(name: category.rawValue))
        }
    }
    
    func getAllCategories() -> [CategoryType] {
        let array = Array(realm.objects(CategoryDB.self))
            .compactMap {
                CategoryType(rawValue: $0.name)
            }
        return array
    }
    
    func updateCategory() {
        
    }
    
    func removeCategory() {
        
    }
    
    func removeAllCategories() {
        try! realm.write {
            let categories = realm.objects(CategoryDB.self)
            realm.delete(categories)
        }
    }
}

class DummyDatabaseInteractor: DatabaseInteractorType {
    func setupDatabase(id: String) {}
    
    func addCategory(category: CategoryType) {}
    
    func getAllCategories() -> [CategoryType] { [] }
    
    func updateCategory() {}
    
    func removeCategory() {}
    
    func removeAllCategories() {}
    
}
