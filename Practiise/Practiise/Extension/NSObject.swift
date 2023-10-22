//
//  NSObject.swift
//  Practiise
//
//  Created by Telha Wasim on 22/10/2023.
//

import Foundation
import UIKit

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
