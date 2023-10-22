//
//  UITextField.swift
//  Practiise
//
//  Created by Telha Wasim on 22/10/2023.
//

import Foundation
import UIKit

extension UITextField {
    
    func attributedPlaceHolder(string: String) {
        let placeholderText = string
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.systemFont(ofSize: 14)
        ]
        let attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)

        self.attributedPlaceholder = attributedPlaceholder
    }
}
