//
//  String+JYAdd.swift
//  JYKit
//
//  Created by LongFu on 2017/12/24.
//  Copyright © 2017年 onelcat. All rights reserved.
//

import UIKit

public extension String {
    
    var base64Encode: String? {
        let data = self.data(using: String.Encoding.utf8)
        return data?.base64EncodedString()
    }
    
    var base64Decode: String? {
        guard let data =  Data(base64Encoded: self) else {
            return nil
        }
        return String.init(data: data, encoding: String.Encoding.utf8)
    }
    
    var utf8Encoded: Data? {
        return self.data(using: String.Encoding.utf8)
    }
    
    // MARK: - MD5
//    fileprivate func ffmd5(_ string: String) -> String {
//
//        let context = UnsafeMutablePointer<CC_MD5_CTX>.allocate(capacity: 1)
//        var digest = Array<UInt8>(repeating:0, count:Int(CC_MD5_DIGEST_LENGTH))
//        CC_MD5_Init(context)
//        CC_MD5_Update(context, string, CC_LONG(string.lengthOfBytes(using: String.Encoding.utf8)))
//        CC_MD5_Final(&digest, context)
//        context.deallocate(capacity: 1)
//        var hexString = ""
//        for byte in digest {
//            hexString += String(format:"%02x", byte)
//        }
//
//        return hexString
//    }
//
//    var md5: String{
//        return ffmd5(self)
//    }
    
    func attributedString(font: UIFont, textColor: UIColor?) -> NSAttributedString {
        
        var attributes: [NSAttributedStringKey: AnyObject] = [NSAttributedStringKey.font: font]
        
        // If we do not add a font attribute, it works well.
        // var attributes: [String: AnyObject] = [:]
        
        if let color = textColor {
            attributes[NSAttributedStringKey.foregroundColor] = color
        }
        return NSAttributedString(string: self, attributes: attributes)
    }
    
    func attributedString(image: UIImage?, bounds:CGRect,font: UIFont, textColor: UIColor?) -> NSMutableAttributedString {
        
        let attachment = NSTextAttachment()
        attachment.image = image
        attachment.bounds = bounds
        let mutableAttributedString = NSMutableAttributedString(attributedString: NSAttributedString(attachment: attachment))
        
        let text = self.attributedString(font: font, textColor: textColor)
        
        mutableAttributedString.append(text)
        return mutableAttributedString
    }
}
