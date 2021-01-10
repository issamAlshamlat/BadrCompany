//
//  UIViewExtension.swift
//  BadrCompany
//
//  Created by Issam Alshamlat on 1/10/21.
//

import Foundation
import UIKit

extension UIView {
    
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1) {
      layer.masksToBounds = false
      layer.shadowColor = color.cgColor
      layer.shadowOpacity = opacity
      layer.shadowOffset = offSet
      layer.shadowRadius = radius

//      layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//      layer.shouldRasterize = true
//      layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
