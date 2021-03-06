//
//  NSObject+.swift
//  XTInputKitDemo
//
//  Created by Input on 2018/1/27.
//  Copyright © 2018年 input. All rights reserved.
//

import UIKit

public extension NSObject {
	
    /// 取类名
    public var className: String {
        get{
            return "\(self.classForCoder)"
        }
    }
    
    /// 取类名
    public static var className: String {
        get{
            return "\(self)"
        }
    }
}
