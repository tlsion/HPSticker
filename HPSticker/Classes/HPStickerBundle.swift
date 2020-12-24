//
//  UIImage+Bundle.swift
//  IRSticker-swift
//
//  Created by Phil on 2020/9/16.
//  Copyright © 2020 Phil. All rights reserved.
//

import Foundation
import UIKit

let modularName = "HPSticker"

public  class  HPStickerBundle {
    ///供其他模块使用
    public static var main:Bundle? {
        get {
            guard let bundleURL = Bundle(for: self).url(forResource: modularName, withExtension: "bundle") else {
                return nil
            }
            guard let bundle = Bundle(url: bundleURL) else {
                return nil
            }
            return bundle
        }
    }
    public class func image(named: String?) -> UIImage?{
        return UIImage(named: named ?? "", in: main, compatibleWith: nil)
    }
}
