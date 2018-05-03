//
//  UISegmentedControl+extension.swift
//  ByvLocalizations
//
//  Created by Adrian Apodaca on 1/5/18.
//

import UIKit
import ByvLocalizations

extension UISegmentedControl {
    @IBInspectable var locTitles: String? {
        get {
            var response = ""
            for i in 0...self.numberOfSegments - 1 {
                if i > 0 {
                    response += ";"
                }
                if let byvFormat = self.formatTitles[i] {
                    response += byvFormat.format
                }
            }
            return response
        }
        set {
            if let texts = newValue {
                let comps = texts.components(separatedBy: ";")
                for i in 0...comps.count - 1 {
                    let text = comps[i]
                    self.locTitle(text, at: i)
                }
            }
        }
    }
}
