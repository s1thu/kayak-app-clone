//
//  CreateAccVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import UIKit

class CreateAccVC: UIViewController {
    
    @IBOutlet weak var imgCheck:UIImageView!
    @IBOutlet weak var btnCheck:UIButton!
    @IBOutlet weak var btnContinue:UIButton!
    @IBOutlet weak var btnBack:UIButton!
    
    private var isChecked:Bool = false{
        didSet{
            imgCheck.image = UIImage.init(named: isChecked ? "icon.checkbox.selected" : "icon.checkbox.unselected")
        }
    }
    
    private var isbtnEnable:Bool = false{
        didSet{
            btnContinue.isEnabled = isbtnEnable
            btnContinue.backgroundColor = isbtnEnable ? UIColor(named: "background.color") : UIColor.opaqueSeparator
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
    }
    
    private func setupViews(){
        isChecked = false
        isbtnEnable = false
        btnContinue.isEnabled = false
    }
    
    private func setupBindings(){
        btnCheck.addTarget(self, action: #selector(checkUncheck), for: .touchUpInside)
        btnContinue.addTarget(self, action: #selector(navigateToEnablenoti), for: .touchUpInside)
        btnBack.addTarget(self, action: #selector(navigateToSignintoemail), for: .touchUpInside)
    }
    
    @objc func checkUncheck(){
        isChecked.toggle()
        isbtnEnable = isChecked ? true : false
    }
    
    @objc func navigateToEnablenoti(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EnablenotiVC") as? EnablenotiVC
        guard let vc = vc else { return  }
        rootNC?.pushViewController(vc, animated: true)
    }
    
    @objc func navigateToSignintoemail(){
        rootNC?.popViewController(animated: true)
    }
   

}
