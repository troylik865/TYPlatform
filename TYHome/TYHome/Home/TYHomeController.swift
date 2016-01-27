//
//  TYHomeController.swift
//  TYHome
//
//  Created by 李彬 on 16/1/26.
//  Copyright © 2016年 李彬. All rights reserved.
//

import UIKit
import TYRoute
import TYCoreService

public class TYHomeController: TYPageController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        let contentView = TYHomeContentView(frame: CGRectMake(100, 100, 100, 100))
        self.view.addSubview(contentView)
        let url = NSURL(string: "http://www.163.com")
        TYCoreServiceHttpServiceManager().dataWithGet(url!)
    }
}
