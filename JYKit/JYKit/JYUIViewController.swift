//
//  JYUIViewController.swift
//  JYKit
//
//  Created by LongJunYan on 2018/2/11.
//  Copyright © 2018年 onlecat. All rights reserved.
//

import Foundation

public protocol JYUIViewController: JYUIView {
    
    func setLeftBarButton(_ button: UIButton)
    
    func setRightBarButton(_ button: UIButton)
    
    func rightBarButtonClicked(_ sender: Any?)
    
    func leftBarButtonClicked(_ sender: Any?)
    
    func buttonClicked(_ sender: Any?)
}
