//
//  UIView+JYAdd.swift
//  JYKit
//
//  Created by LongFu on 2017/12/24.
//  Copyright © 2017年 onelcat. All rights reserved.
//

import UIKit

public extension UIView {
    
    func snapshotImage() -> UIImage? {
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        UIGraphicsBeginImageContextWithOptions(bounds.size, isOpaque, 0)
        layer.render(in: context)
        let snap = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return snap
    }
    
    func snapshotPDF() -> Data? {
        var bounds = self.bounds
        let data = NSMutableData.init()
        guard let consumer = CGDataConsumer.init(data: data) else {
            return nil
        }
        guard let context = CGContext(consumer: consumer, mediaBox: &bounds, nil) else {
            return nil
        }
        
        context.beginPDFPage(nil)
        context.translateBy(x: 0, y: bounds.size.height)
        context.scaleBy(x: 1.0, y: -1.0)
        layer.render(in: context)
        context.endPDFPage()
        context.closePDF()
        return data as Data
    }
    
    func removeAllSubviews() {
        while self.subviews.count > 0 {
            self.subviews.last?.removeFromSuperview()
        }
    }
    
   public func convert(point: CGPoint, toViewOrWindow view: UIView?) -> CGPoint? {
        
        if let view = view {
            let from: UIWindow? = self.isKind(of: UIWindow.self) ? (self as! UIWindow) : self.window
            let to = view.isKind(of: UIWindow.self) ? (view as! UIWindow)  : view.window
            if (from == nil || to == nil) || (from == to) {
                return self.convert(point, to: view)
            }
            
            var tp = self.convert(point, to: from)
            tp = (to?.convert(tp, from: from))!
            tp = view.convert(tp, from: to)
            return tp
            
        } else {
            if self.isKind(of: UIWindow.self) {
                return (self as! UIWindow).convert(point, from: nil)
            } else {
                return self.convert(point, from: nil)
            }
        }
    }
    
    func convert(point: CGPoint, fromViewOrWindow view: UIView?) -> CGPoint? {
        if let view = view {
            let to: UIWindow? = self.isKind(of: UIWindow.self) ? (self as! UIWindow) : self.window
            let from = view.isKind(of: UIWindow.self) ? (view as! UIWindow)  : view.window
            if (from == nil || to == nil) || (from == to) {
                return self.convert(point, from: view)
            }
            
            var tp = from?.convert(point, from: from)
            tp = (to?.convert(tp!, from: from))!
            tp = view.convert(tp!, from: to)
            return tp
            
        } else {
            if self.isKind(of: UIWindow.self) {
                return (self as! UIWindow).convert(point, from: nil)
            } else {
                return self.convert(point, from: nil)
            }
        }
    }
    
    func set(left: CGFloat, and right: CGFloat ) {
        if right < left {
            return
        }
        frame.origin.x = left
        frame.size.width = right - left
    }
    
    func set(top: CGFloat, and bottom: CGFloat) {
        if bottom < top {
            return
        }
        frame.origin.y = top
        frame.size.height = bottom - top
    }
    
    var centerX: CGFloat {
        set {
            center.x = newValue
        }
        get {
            return center.x
        }
    }
    
    var centerY: CGFloat {
        set {
            center.y = newValue
        }
        get {
            return center.y
        }
    }
    
    var width: CGFloat {
        set {
            frame.size.width = newValue
        }
        get {
            return frame.width
        }
    }
    
    var height: CGFloat {
        set {
            frame.size.height = newValue
        }
        get {
            return frame.height
        }
    }
    
    var top: CGFloat {
        set {
            frame.origin.y = newValue
        }
        get {
            return frame.origin.y
        }
    }
    
    var bottom: CGFloat {
        set {
            let y = newValue - frame.height
            frame.origin.y = y
        }
        get {
            return frame.origin.y + frame.height
        }
    }
    
    var left: CGFloat {
        set {
            frame.origin.x = newValue
        }
        get {
            return frame.origin.x
        }
    }
    
    var right: CGFloat {
        set {
            let x = newValue - frame.width
            self.frame.origin.x = x
        }
        
        get {
            return frame.origin.x + frame.width
        }
    }
    
    var size: CGSize {
        set {
            frame.size = newValue
        }
        get {
            return frame.size
        }
    }
    
    var origin: CGPoint {
        set {
            frame.origin = newValue
        }
        get {
            return frame.origin
        }
    }
}
