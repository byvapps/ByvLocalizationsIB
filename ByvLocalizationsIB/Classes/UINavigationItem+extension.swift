//
//  UINavigationItem+extension.swift
//  ByvLocalizations
//
//  Created by Adrian Apodaca on 1/5/18.
//

import UIKit
import ByvLocalizations

extension UINavigationItem {
    @IBInspectable var locTitle: String? {
        get {
            return self.formatTitle?.format
        }
        set {
            if let text = newValue {
                self.locTitle(text)
            }
        }
    }
}
