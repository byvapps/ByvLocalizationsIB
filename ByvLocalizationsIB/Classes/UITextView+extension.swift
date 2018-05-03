//
//  UITextView+extension.swift
//  ByvLocalizations
//
//  Created by Adrian Apodaca on 1/5/18.
//

import UIKit
import ByvLocalizations

extension UITextView {
    @IBInspectable var locText: String? {
        get {
            return self.formatText?.format
        }
        set {
            if let text = newValue {
                self.locText(text)
            }
        }
    }
}
