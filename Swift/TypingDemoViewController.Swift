//
//  LATypingDemoViewController.m
//  LottieExamples
//
//  Created by Xiaodan Wang on 1/9/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import Foundation
import UIKit

class TypingDemoViewController: UIViewController {
    weak var typingField_: UITextField!
    
    func shakeIt() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(
            CGPoint(textField_.center.x - 10, textField_.center.y)
        )
        animation.toValue = NSValue(
            CGPoint(textField_.center.x + 10, textField_.center.y)
        )
        typingField_.layer.add(animation, forKey: "position")
    }
    
}
