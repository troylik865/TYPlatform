//
//  TYCoreServiceHttpServiceManager.swift
//  TYCoreService
//
//  Created by 李彬 on 16/1/26.
//  Copyright © 2016年 李彬. All rights reserved.
//

import UIKit
import AFNetworking


public class TYCoreServiceHttpServiceManager: NSObject {

    public func dataWithGet(url : NSURL) {

        let manager = AFHTTPSessionManager()
        manager.responseSerializer = AFJSONResponseSerializer()
        manager.responseSerializer.acceptableContentTypes = NSSet(array: ["text/html"]) as! Set<String>
        manager.GET(url.absoluteString, parameters: nil, progress: { (progress) -> Void in
            
            }, success: { (task, res) -> Void in
                print("成功")
            }) { (task, error) -> Void in
                print(error.debugDescription)
        };
    }
}
