//
//  circularProgressBar.swift
//  myLib
//
//  Created by Ricky Christian on 08/08/18.
//

import UIKit

public class CircularProgressBar: UIView {
    
    let shapeLayer = CAShapeLayer()

    public override func draw(_ rect: CGRect) {
        var myCenter = CGPoint()
        myCenter.x = 50
        myCenter.y = 50
        
        let circularPath = UIBezierPath(arcCenter: myCenter, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        

        shapeLayer.path = circularPath.cgPath
        shapeLayer.fillColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        shapeLayer.strokeColor = #colorLiteral(red: 0.1215686275, green: 0.5294117647, blue: 0.3568627451, alpha: 1)
        shapeLayer.lineWidth = 15
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.strokeEnd = 0


        self.layer.addSublayer(shapeLayer)

        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector (handleTap)))
    }
    
    private func beginSaving() {
        print("start saving")
    }
    
    //    Animation
    
    fileprivate func animateCircle() {
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        basicAnimation.duration = 1
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        
        shapeLayer.add(basicAnimation, forKey: "urSoBaic")
    }
    
    @objc private func handleTap() {
        print("attempting to animate stroke")
        
        beginSaving()
        
        animateCircle()
        
    }
    
}

extension UIView {
    public func colorize() {
        self.backgroundColor = UIColor.blue
    }
}









