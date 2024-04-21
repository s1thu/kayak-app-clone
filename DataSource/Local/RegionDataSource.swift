//
//  RegionDataSource.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 19/04/2024.
//

import Foundation
class RegionDataSource{
    
    //This data can be from anywhere
    private var regionList:[Region] = Region.getDummyData()
    
    // Private Constructor
    private init(){
        
    }
    
    //obj will build only once
    static let shared = RegionDataSource.init()
    
    func getAllRegions() ->[Region]{
        regionList
    }
    
    func checkUncheckregion(id:Int){
        regionList.first{$0.id == id}?.isSelected.toggle()
    }
    
    func getCheckUncheckRegion() -> Bool{
        regionList[0].isSelected
    }
    
}
