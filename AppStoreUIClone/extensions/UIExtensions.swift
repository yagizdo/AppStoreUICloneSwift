//
//  UIExtensions.swift
//  AppStoreUIClone
//
//  Created by Yılmaz Yağız Dokumacı on 13.04.2023.
//

import UIKit

extension UIImageView {
    func customMode() {
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
}
