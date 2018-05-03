//
//  UISearchBar+extension.swift
//  ByvLocalizations
//
//  Created by Adrian Apodaca on 1/5/18.
//

import UIKit
import ByvLocalizations

extension UISearchBar {
    @IBInspectable var locPlaceholder: String? {
        get {
            return self.formatText?.format
        }
        set {
            if let text = newValue {
                self.locPlaceholder(text)
            }
        }
    }
}
