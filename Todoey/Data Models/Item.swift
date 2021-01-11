//
//  Item.swift
//  Todoey
//
//  Created by Ivan Chan on 5/1/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date? = Date()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
