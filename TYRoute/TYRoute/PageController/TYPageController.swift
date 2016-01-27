//
//  TYPageController.swift
//  TYRoute
//
//  Created by 李彬 on 16/1/26.
//  Copyright © 2016年 李彬. All rights reserved.
//

import UIKit
import TYExtension


public class TYPageController: UIViewController {
    
    public func gotoPage(pageName:String) {
        let clazz = NSObject.swiftClassFromString(pageName) as! TYPageController.Type
        self.navigationController?.pushViewController(clazz.init(), animated: true)
    }
}
