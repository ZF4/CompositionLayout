//
//  Section.swift
//  CompositionalLayout
//
//  Created by Zachary Farmer on 11/8/22.
//

import Foundation


struct Section: Hashable {
    let id = UUID()
    
    let type: SectionType
    let title: String
    let subTitle: String
    let items: [Item]
    
    init(type: SectionType, title: String = "", subTitle: String = "", items: [Item] = []) {
        self.type = type
        self.title = title
        self.subTitle = subTitle
        self.items = items
    }
    
    enum ItemSectionType: String {
        case subTitle
        case subTitle2
        case subTitle3
        case searchBar
        case header
        case largeDisplayCell
    }
    
    struct SectionType: RawRepresentable, Hashable {
        typealias RawValue = String
        var rawValue: String
        
        init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        static let subTitle = SectionType(rawValue: Section.ItemSectionType.subTitle.rawValue)
        static let subTitle2 = SectionType(rawValue: Section.ItemSectionType.subTitle2.rawValue)
        static let subTitle3 = SectionType(rawValue: Section.ItemSectionType.subTitle3.rawValue)
        static let searchBar = SectionType(rawValue: Section.ItemSectionType.searchBar.rawValue)
        static let header = SectionType(rawValue: Section.ItemSectionType.header.rawValue)
        static let largeDisplayCell = SectionType(rawValue: Section.ItemSectionType.largeDisplayCell.rawValue)

    }
}
