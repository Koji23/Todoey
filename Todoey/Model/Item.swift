//
//  Item.swift
//  Todoey
//
//  Created by Jordan Chong on 12/19/18.
//  Copyright © 2018 Jordan Chong. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
