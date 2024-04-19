//
//  SignintoEmailVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 15/04/2024.
//

import UIKit

class SignintoEmailVC: UIViewController {
    
    @IBOutlet weak var btnBack:UIButton!
    @IBOutlet weak var tfEmail:UITextField!
    @IBOutlet weak var btnContinue:UIButton!
    
    private var enableBtn:Bool = false{
        didSet{
            btnContinue.isEnabled = enableBtn
            btnContinue.backgroundColor = enableBtn ? UIColor(named: "background.color") : UIColor.opaqueSeparator
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
    }
    
    private func setupViews(){
        btnContinue.isEnabled = false
        btnContinue.backgroundColor = UIColor.lightGray
    }
    
    private func setupBindings(){
        btnBack.addTarget(self, action: #selector(navigateToSigninContinue), for: .touchUpInside)
        tfEmail.addTarget(self, action: #selector(validateEmail), for: .editingChanged)
        btnContinue.addTarget(self, action: #selector(navigateToCreateAcc), for: .touchUpInside)
    }
    
    @objc func navigateToSigninContinue(){
        rootNC?.popViewController(animated: true)
    }
    
    @objc func validateEmail(){
        enableBtn = tfEmail.text.isEmailValid ? true: false
    }
    
    @objc func navigateToCreateAcc(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "CreateAccVC") as? CreateAccVC
        guard let vc = vc else { return  }
        rootNC?.pushViewController(vc, animated: true)
    }

   

}
