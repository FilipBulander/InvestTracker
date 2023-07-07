//
//  CategoryDB.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import RealmSwift

class CategoryDB: Object {
   @Persisted(primaryKey: true) var _id: ObjectId
   @Persisted var name: String = ""
    
   convenience init(name: String) {
       self.init()
       self.name = name
   }
}
