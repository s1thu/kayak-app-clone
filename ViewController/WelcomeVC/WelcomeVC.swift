//
//  WelcomeVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import UIKit

class WelcomeVC: UIViewController {
    
//    let regionList:[Region] = Region.getDummyData()
    
    lazy var vm:WelcomeVM = WelcomeVM(delegate: self)
    
    @IBOutlet weak var tbRegion:UITableView!
    @IBOutlet weak var btnContinue:UIButton!
    
    private var btnIsEnable:Bool = false{
        didSet{
            btnContinue.isEnabled = btnIsEnable
            btnContinue.backgroundColor = btnIsEnable ? UIColor(named: "background.color") : UIColor.opaqueSeparator
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()

        //Register Table View Cell
        tbRegion.register(.init(nibName: "RegionsCell", bundle: nil), forCellReuseIdentifier: "RegionsCell")
        tbRegion.dataSource = self
        tbRegion.delegate = self
        vm.fetchRegions()
        
    }
    
    private func setupViews(){
        btnIsEnable = vm.getCheckUncheckRegion()
    }
    
    private func setupBindings(){
        btnContinue.addTarget(self, action: #selector(navigateToheythere), for: .touchUpInside)
    }
    
    @objc func navigateToheythere(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeythereVC") as? HeythereVC
        guard let vc = vc else { return  }
        rootNC?.pushViewController(vc, animated: true)
    }

}

extension WelcomeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vm.regions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let region = vm.regions[indexPath.row]
        
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
        vm.checkUncheckregion(id: data.id)
        
        for region in vm.regions{
            print("\(region.countryName) \(region.isSelected)")
        }
    }
}

extension WelcomeVC:WelcomeDelegate{
    func onGetRegions() {
        tbRegion.reloadData()
    }
}
