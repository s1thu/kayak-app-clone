//
//  RootNC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 14/04/2024.
//

import UIKit

class RootNC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //After splash Screen show, the Login Screen will pop up
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.navigateToSignintocontinue()
        }

    }
    
    func navigateToSignintocontinue(){
        let vc  = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "SignintoContinueVC") as? SignintoContinueVC
        guard let vc = vc else { return  }
        pushViewController(vc, animated: true)
    }

    

}
