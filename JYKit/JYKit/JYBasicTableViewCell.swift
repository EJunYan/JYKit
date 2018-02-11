//
//  JYBasicTableViewCell.swift
//  JYKit
//
//  Created by LongJunYan on 2018/2/11.
//  Copyright © 2018年 onlecat. All rights reserved.
//

import UIKit

public class JYBasicTableViewCell: UITableViewCell,JYUIView {
    
    public func viewInit() {
        
    }
    
    public func layoutInit() {
        
    }
    
    public func commonInit() {
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
    

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
