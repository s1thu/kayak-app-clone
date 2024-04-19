//
//  WelcomeVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import UIKit

class WelcomeVC: UIViewController {
    
    let regionList:[Region] = Region.getDummyData()
    
    @IBOutlet weak var tbRegion:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        //Register Table View Cell
        tbRegion.register(.init(nibName: "RegionsCell", bundle: nil), forCellReuseIdentifier: "RegionsCell")
        tbRegion.dataSource = self
        tbRegion.delegate = self
        
    }

}

extension WelcomeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        regionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let region = regionList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegionsCell", for: indexPath) as? RegionsCell
        guard let cell = cell else { return UITableViewCell() }
        
        //bind data
        cell.bindData(data: region)
        cell.delegate = self
        
        return cell
    }
    
    
}

extension WelcomeVC:UITableViewDelegate{
    
}

extension WelcomeVC:RegionDelegate{
    func onTapCheckUncheck(data: Region) {
        data.isSelected.toggle()
        
        for region in regionList{
            print("\(region.id) \(region.countryName) \(region.isSelected)")
        }
        
        tbRegion.reloadData()
    }
}
