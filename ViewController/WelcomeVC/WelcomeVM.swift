//
//  WelcomeVM.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 20/04/2024.
//

import Foundation

protocol WelcomeDelegate{
    func onGetRegions()
}
class WelcomeVM{
    
    let regionRepository = RegionRepository.init()
    
    //to communication with VC
    let delegate:WelcomeDelegate
    
    init(delegate: WelcomeDelegate) {
        self.delegate = delegate
    }
    
    private (set) var regions:[Region] = []{
        didSet{
            delegate.onGetRegions()
        }
    }
    
    func fetchRegions(){
        regions = regionRepository.getAllRegions()
    }
    
    func checkUncheckregion(id:Int){
        regionRepository.checkUncheck(id: id)
        fetchRegions()
    }
    
    func getCheckUncheckRegion() -> Bool{
        regionRepository.getCheckUncheckRegion()
    }
}
