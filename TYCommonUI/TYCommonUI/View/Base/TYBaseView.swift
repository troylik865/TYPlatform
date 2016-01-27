//
//  TYBaseView.swift
//  TYCommonUI
//
//  Created by 李彬 on 16/1/26.
//  Copyright © 2016年 李彬. All rights reserved.
//

import UIKit

public class TYBaseView: UIView {

    /**
     根据数据进行UI渲染
     
     :param: data 数据
     */
    public class func renderUIWithData(data : NSDictionary) {
        
    }

    /**
     根据数据进行UI高度的计算
     
     :param: data 数据
     
     :return: 高度
     */
    public class func viewHeightWithData(data:NSDictionary) -> Float{
        return 10;
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required public override init(frame: CGRect) {
        super.init(frame: frame)
    }
}
