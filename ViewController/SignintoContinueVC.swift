//
//  SignintoContinueVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 15/04/2024.
//

import UIKit

class SignintoContinueVC: UIViewController {
    
    @IBOutlet weak var btnSkip:UIButton!
    @IBOutlet weak var btnEmail:UIButton!
    @IBOutlet weak var btnTerms:UIButton!
    @IBOutlet weak var btnPrivacy:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupBindings()
    }
    
    private func setupViews(){
        
    }
    
    private func setupBindings(){
        btnSkip.addTarget(self, action: #selector(navigateToEmailSign), for: .touchUpInside)
        btnEmail.addTarget(self, action: #selector(navigateToEmailSign), for: .touchUpInside)
//        btnTerms.addTarget(self, action: #selector(), for: .touchUpInside)
//        btnPrivacy.addTarget(self, action: #selector(), for: .touchUpInside)
    }
    
    @objc func navigateToEmailSign(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SigintoEmailVC") as? SignintoEmailVC
        guard let vc = vc else { return  }
        rootNC?.pushViewController(vc, animated: true)
    }

}
