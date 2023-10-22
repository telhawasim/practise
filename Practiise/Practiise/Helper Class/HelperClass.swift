//
//  HelperClass.swift
//  Practiise
//
//  Created by Telha Wasim on 22/10/2023.
//

import Foundation
import UIKit

class HelperClass {
    
    static let shared = HelperClass()
    
    private init() {}
    
    //MARK: - CONVERT COLOR FROM HEX TO RGB -
    func colorFromHex(_ hex: String, alpha: CGFloat = 1.0) -> UIColor? {
        var cleanedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanedHex = cleanedHex.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: cleanedHex).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
