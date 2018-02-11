//
//  Data+JYAdd.swift
//  JYKit
//
//  Created by LongFu on 2017/12/24.
//  Copyright © 2017年 onelcat. All rights reserved.
//

import Foundation

public extension Data {
    
    var utf8Encoded: String? {
        return String.init(data: self, encoding: String.Encoding.utf8)
    }
    
}
