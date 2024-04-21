//
//  TabbarVC.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 20/04/2024.
//

import UIKit

class TabbarVC: UITabBarController {

        
        //To change tabbar height
        //first step
        class CustomHeightTabbar:UITabBar{
            override func sizeThatFits(_ size: CGSize) -> CGSize {
                var size = super.sizeThatFits(size)
                size.height = 100
                return size
            }
        }
        
//        var homeVC:HomeVC{
//            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(identifier: "HomeVC") as! HomeVC
//            return vc;
//       
//        }
//        
//        var profileVC:ProfileVC{
//            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(identifier: "ProfileVC") as! ProfileVC
//            return vc;
//       
//        }
        
        init(){
            super.init(nibName: nil, bundle: nil)
            
            //change tabbar height
            //second step
            object_setClass(self.tabBar, CustomHeightTabbar.self)
            
            // Text color change
            let normalAttribute = [NSAttributedString.Key.foregroundColor: UIColor.gray]
            let selectedAttribute = [NSAttributedString.Key.foregroundColor: UIColor.white]
            
            tabBar.items?.forEach({ barItem in
                barItem.setTitleTextAttributes(normalAttribute, for: .normal)
                barItem.setTitleTextAttributes(selectedAttribute, for: .selected)
            })
            
            
            //add shadow
            tabBar.shadowImage = .init() //1st step
            tabBar.layer.shadowOffset = CGSize.init(width: 0, height: 0)
            tabBar.layer.shadowRadius = 5
            tabBar.layer.shadowColor = UIColor.gray.cgColor
            tabBar.layer.shadowOpacity = 0.3
            
        }
        
        required init?(coder:NSCoder) {
            fatalError()
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
//            viewControllers = [
//            homeVC,profileVC
//            ]

            tabBar.backgroundColor = UIColor(named: "TabbarBlack")
            UITabBar.appearance().barTintColor = UIColor(named: "TabbarBlack")
            
        }
        
}
