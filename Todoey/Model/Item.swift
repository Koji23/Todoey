//
//  Item.swift
//  Todoey
//
//  Created by Jordan Chong on 12/17/18.
//  Copyright © 2018 Jordan Chong. All rights reserved.
//

import Foundation

class Item {
    var title : String
    var done : Bool = false
    
    init(title: String = "") {
        self.title = title
    }
}
