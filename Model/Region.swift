//
//  Regoin.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 19/04/2024.
//

import Foundation

class Region{
    
    let id:Int
    let countryName:String
    let website:String
    let rate:String
    let flag:String
    var isSelected:Bool = false
    
    init(id:Int,countryName: String, website: String, rate: String, flag: String,isSelected:Bool = false) {
        self.id = id
        self.countryName = countryName
        self.website = website
        self.rate = rate
        self.flag = flag
        self.isSelected  = isSelected
    }
    
    static func getDummyData() -> [Region]{
        return [
            .init(id: 1,countryName: "United States", website: "kayak.com", rate: "$ (USD)", flag: "icon.flag.america"),
            .init(id: 2, countryName: "Singapore", website: "kayak.sg", rate: "S$ (SGD)", flag: "icon.flag.sg")
        ]
    }
    
}
