//
//  Date+JYAdd.swift
//  Trovel
//
//  Created by LongFu on 2018/1/6.
//  Copyright © 2018年 onelcat. All rights reserved.
//

import Foundation

public extension Date {

    func dateFormat(_ formatterText: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = formatterText
        return formatter.string(from: self)
    }
    
}
