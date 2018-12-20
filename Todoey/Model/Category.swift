//
//  Category.swift
//  Todoey
//
//  Created by Jordan Chong on 12/19/18.
//  Copyright © 2018 Jordan Chong. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
