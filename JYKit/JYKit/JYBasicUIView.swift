//
//  JYBasicUIView.swift
//  JYKit
//
//  Created by LongJunYan on 2018/2/11.
//  Copyright © 2018年 onlecat. All rights reserved.
//

import UIKit

public class JYBasicUIView: UIView, JYUIView {
    
    public func viewInit() {
        
    }
    
    public func layoutInit() {
        
    }
    
    public func commonInit() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layoutInit()
    }

    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
