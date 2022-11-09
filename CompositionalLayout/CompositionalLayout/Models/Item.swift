//
//  Item.swift
//  CompositionalLayout
//
//  Created by Zachary Farmer on 11/8/22.
//

import Foundation

struct Item: Hashable {
    let id = UUID()
    let title: String
    let subTitle: String
    let image: String
    
    
    init(title: String = "", subTitle: String = "", image: String = "") {
        self.title = title
        self.subTitle = subTitle
        self.image = image
    }
    
}
