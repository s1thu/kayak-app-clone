//
//  RegionDataSource.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 19/04/2024.
//

import Foundation
class RegionDataSource{
    
    private var regionList:[Region] = Region.getDummyData()
    
    private init(){
        
    }
    
    static let shared = RegionDataSource.init()
    
    func getAllRegions() ->[Region]{
        regionList
    }
    
}
