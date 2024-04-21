//
//  RegionRepository.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 19/04/2024.
//

import Foundation

class RegionRepository{
    
    let regionDatasource = RegionDataSource.shared
    
    func getAllRegions() -> [Region]{
        regionDatasource.getAllRegions()
    }
 
    func checkUncheck(id:Int){
        regionDatasource.checkUncheckregion(id: id)
    }
    
    func getCheckUncheckRegion() -> Bool{
        regionDatasource.getCheckUncheckRegion()
    }
}
