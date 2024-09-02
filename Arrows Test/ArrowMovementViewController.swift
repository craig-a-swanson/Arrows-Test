//
//  ArrowMovementViewController.swift
//  Arrows Test
//
//  Created by Craig Swanson on 9/1/24.
//

import UIKit

class ArrowMovementViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let arrow1 = MovingArrowsView(frame: self.view.bounds)
        self.view.addSubview(arrow1)
        arrow1.createArrow(at: CGPoint(x: 40, y: 150), direction: -45, speed: 10)
        
        let arrow2 = MovingArrowsView(frame: self.view.bounds)
        self.view.addSubview(arrow2)
        arrow2.createArrow(at: CGPoint(x: 150, y: 365), direction: -10, speed: 15)
        
    }
}

/*
 // Create the line layer
 let lineLayer = CAShapeLayer()
 lineLayer.strokeColor = UIColor.black.cgColor
 lineLayer.lineWidth = 4
 lineLayer.lineCap = .round
 
 // Create the path for the line
 let path = UIBezierPath()
 path.move(to: CGPoint(x: 0, y: 0))
 path.addLine(to: CGPoint(x: 0, y: 25))
 lineLayer.path = path.cgPath
 
 // Position the line at the center of the view
 lineLayer.position = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
 
 // Rotate the line 45 degrees
 lineLayer.transform = CATransform3DMakeRotation(.pi / 4, 0, 0, 1)
 
 // Set initial opacity to 0 (invisible)
 lineLayer.opacity = 0
 
 // Add the layer to the view
 view.layer.addSublayer(lineLayer)
 
 // Create the fade in animation
 let fadeAnimation = CAKeyframeAnimation(keyPath: "opacity")
         fadeAnimation.values = [0, 1, 1, 0] // Start at 0, go to 1, stay at 1
 fadeAnimation.keyTimes = [0, 0.25, 0.75, 1] // Timing for the opacity values
         fadeAnimation.duration = 3.0
 
 // Create the movement animation
 let moveAnimation = CABasicAnimation(keyPath: "position")
 moveAnimation.fromValue = lineLayer.position
 moveAnimation.toValue = CGPoint(x: lineLayer.position.x + 80, y: lineLayer.position.y - 80)
 moveAnimation.duration = 3.0
 moveAnimation.beginTime = 0.0 // Start after fade in
 moveAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
 
 // Combine all animations into a group
 let animationGroup = CAAnimationGroup()
 animationGroup.animations = [fadeAnimation, moveAnimation]
 animationGroup.duration = 3.0 // Total duration of all animations
 animationGroup.fillMode = .both
 animationGroup.repeatCount = .infinity
//        animationGroup.isRemovedOnCompletion = false
 
 // Add the animation group to the layer
 lineLayer.add(animationGroup, forKey: "lineAnimation")
 */
