//
//  UIScrollView+JYAdd.swift
//  JYKit
//
//  Created by LongFu on 2017/12/24.
//  Copyright © 2017年 onelcat. All rights reserved.
//

import UIKit

public extension UIScrollView {
    
    func scrollToTop() {
        self.scrollToTopAnimated(animated: true)
    }
    
    func scrollToBottom() {
        self.scrollToBottomAnimated(animated: true)
    }
    
    func scrollToLeft() {
        self.scrollToLeftAnimated(animated: true)
    }
    
    func scrollToRight() {
        self.scrollToRightAnimated(animated: true)
    }
    
    func scrollToTopAnimated(animated: Bool) {
        var off = self.contentOffset
        off.y = 0 - self.contentInset.top
        self.setContentOffset(off, animated: animated)
    }
    
    func scrollToBottomAnimated(animated: Bool) {
        var off = self.contentOffset
        off.y = self.contentSize.height - self.bounds.size.height + self.contentInset.bottom
        self.setContentOffset(off, animated: animated)
    }
    
    func scrollToLeftAnimated(animated: Bool) {
        var off = self.contentOffset
        off.x = 0 - self.contentInset.left
        self.setContentOffset(off, animated: animated)
    }
    
    func scrollToRightAnimated(animated: Bool) {
        var off = self.contentOffset
        off.x = self.contentSize.width - self.bounds.size.width + self.contentInset.right
        self.setContentOffset(off, animated: animated)
    }
    
}
