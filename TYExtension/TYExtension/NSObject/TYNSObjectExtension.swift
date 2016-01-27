//
//  TYNSObjectExtension.swift
//  TYExtension
//
//  Created by 李彬 on 16/1/26.
//  Copyright © 2016年 李彬. All rights reserved.
//

import UIKit

public extension NSObject {
    // create a static method to get a swift class for a string name
    class func swiftClassFromString(className: String) -> AnyClass! {
        // get the project name
        return SwiftClassFromString(className)
    }
    
    class func swiftClassFromString(className: String,bundleName:String) -> AnyClass! {
        return SwiftClassFromString(className, bundleName: bundleName)
    }
}

func SwiftClassFromString(className:String!) -> AnyClass!{
    if  let appName: String? = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName") as! String? {
        return SwiftClassFromString(className, bundleName: appName)
    }
    return nil;
}

func SwiftClassFromString(className:String!,bundleName : String?) -> AnyClass!{
        // generate the full name of your class (take a look into your "YourProject-swift.h" file)
        let classStringName = bundleName! + "." + className
        // return the class!
        return NSClassFromString(classStringName)
    
}