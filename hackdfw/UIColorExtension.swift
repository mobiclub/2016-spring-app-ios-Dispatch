//
//  UIColorExtension.swift
//  Dispatch
//
//  Created by Cameron Moreau on 4/17/16.
//  Copyright © 2016 Mobi. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func mainColor() -> UIColor {
        return UIColor(netHex: 0x43d4e6)
    }
    
    static func mainGradient() -> CAGradientLayer {
        let top = UIColor(netHex: 0x40dcc2).CGColor
        let bottom = UIColor(netHex: 0x43d4e6).CGColor
        let gl = CAGradientLayer()
        gl.colors = [top, bottom]
        gl.locations = [0.0, 1.0]
        gl.opacity = 1
        
        return gl
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}
