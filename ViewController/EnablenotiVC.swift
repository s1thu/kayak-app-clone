//
//  EnablenotiVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import UIKit

class EnablenotiVC: UIViewController {
    
    @IBOutlet weak var btnEnablenoti:UIButton!
    @IBOutlet weak var btnSkip:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
        
    }
    
    private func setupViews(){
        
    }
    
    private func setupBindings(){
        [btnSkip,btnEnablenoti].addTarget(action: #selector(navigateToWelcome))
    }

    @objc func navigateToWelcome(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC
        guard let vc = vc else { return  }
        rootNC?.pushViewController(vc, animated: true)
    }

}
