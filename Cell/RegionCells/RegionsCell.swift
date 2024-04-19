//
//  RegionsCell.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import UIKit

protocol RegionDelegate{
    func onTapCheckUncheck(data:Region)
}

class RegionsCell: UITableViewCell {
    
    @IBOutlet weak var imgCountry:UIImageView!
    @IBOutlet weak var lblCurRegion:UILabel!
    @IBOutlet weak var lblCountry:UILabel!
    @IBOutlet weak var lblRate:UILabel!
    @IBOutlet weak var lblWebsite:UILabel!
    @IBOutlet weak var imgRadio:UIImageView!
    @IBOutlet weak var btnCheck:UIButton!
    
    private var region:Region? = nil
    var delegate:RegionDelegate? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
        btnCheck.addTarget(self, action: #selector(onTapcheckUncheck), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(data:Region){
        self.region = data
        lblCurRegion.text = (data.id == 1 ? "Current region" : "Suggested region")
        lblCountry.text = data.countryName
        lblWebsite.text = data.website
        lblRate.text = data.rate
        imgCountry.image = UIImage(named: data.flag)
        imgRadio.image = data.isSelected ? UIImage(named: "icon.radio.checked") : UIImage(named: "icon.radio.unchecked")
    }
    
    @objc func onTapcheckUncheck(){
        delegate?.onTapCheckUncheck(data: region!)
    }
    
}
