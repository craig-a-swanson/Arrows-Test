//
//  MovingArrowsView.swift
//  Arrows Test
//
//  Created by Craig Swanson on 9/1/24.
//

import UIKit

class MovingArrowsView: UIView {

    func createArrow(at position: CGPoint, direction: CGFloat, speed: CGFloat) {
        let radians = direction/180 * 3.1415927
        let arrowLayer = CAShapeLayer()
        let arrowPath = UIBezierPath()
        
        // Draw a simple arrow shape
        arrowPath.move(to: CGPoint(x: 0, y: 0))
        arrowPath.addLine(to: CGPoint(x: 20, y: 5))
        arrowPath.addLine(to: CGPoint(x: 0, y: 10))
        arrowPath.close()
        
        arrowLayer.path = arrowPath.cgPath
        arrowLayer.fillColor = UIColor.blue.cgColor
        arrowLayer.position = position
        arrowLayer.transform = CATransform3DMakeRotation(radians, 0, 0, 1)
        self.layer.addSublayer(arrowLayer)
        
        // Movement animation
        let moveAnimation = CABasicAnimation(keyPath: "position")
        moveAnimation.fromValue = position
        moveAnimation.toValue = CGPoint(x: position.x + cos(radians) * speed * 10, y: position.y + sin(radians) * speed * 10)
        moveAnimation.duration = 3.0
        moveAnimation.beginTime = 0.0
        moveAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
        
        // Fade-in and fade-out animations
        let fadeInAnimation = CAKeyframeAnimation(keyPath: "opacity")
        fadeInAnimation.values = [0, 1, 1, 0]
        fadeInAnimation.keyTimes = [0, 0.25, 0.75, 1]
        fadeInAnimation.duration = 3.0
        
        // Group the animations together
        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [fadeInAnimation, moveAnimation]
        animationGroup.duration = 3.0
        animationGroup.fillMode = .both
        animationGroup.repeatCount = .infinity
        
        arrowLayer.add(animationGroup, forKey: "lineAnimation")
    }

}
