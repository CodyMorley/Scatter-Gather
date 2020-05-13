//
//  ScatterGatherViewController.swift
//  Scatter and Gather
//
//  Created by Cody Morley on 5/12/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

import UIKit

class ScatterGatherViewController: UIViewController {
    //MARK: - Properties -
    @IBOutlet weak var lTextLabel: UILabel!
    @IBOutlet weak var a1TextLabel: UILabel!
    @IBOutlet weak var mTextLabel: UILabel!
    @IBOutlet weak var bTextLabel: UILabel!
    @IBOutlet weak var dTextLabel: UILabel!
    @IBOutlet weak var a2TextLabel: UILabel!
    @IBOutlet weak var lambdaLogoView: UIImageView!
    
    private var isScattered = false
    
    //MARK: - Life Cycles -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - Actions -
    @IBAction func toggleButtonPressed(_ sender: Any) {
        if isScattered == false {
            scatter()
        } else {
            gather()
        }
        isScattered = !isScattered
    }
        
    
    
    //MARK: - Methods -
    
    private func scatter() {
        let scatterAnimations = {
            ///key frame 1 fades the lambda logo into the background to begin the animation
            UIView.addKeyframe(withRelativeStartTime: 0.0,
                               relativeDuration: 0.3) {
                                self.lambdaLogoView.alpha = 0
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.0,
                               relativeDuration: 0.13) {
                                self.lTextLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                self.a1TextLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                self.mTextLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                self.bTextLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                self.dTextLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                self.a2TextLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.13,
                               relativeDuration: 0.17) {
                                self.lTextLabel.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
                                self.a1TextLabel.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
                                self.mTextLabel.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
                                self.bTextLabel.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
                                self.dTextLabel.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
                                self.a2TextLabel.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.3,
                               relativeDuration: 0.025) {
                                self.lTextLabel.transform = .identity
                                self.a1TextLabel.transform = .identity
                                self.mTextLabel.transform = .identity
                                self.bTextLabel.transform = .identity
                                self.dTextLabel.transform = .identity
                                self.a2TextLabel.transform = .identity
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.325,
                               relativeDuration: 0.175) {
                                self.lTextLabel.center = CGPoint(x: self.lTextLabel.center.x + 2, y: self.lTextLabel.center.y + -3.5)
                                self.a1TextLabel.center = CGPoint(x: self.a1TextLabel.center.x + -2, y: self.a1TextLabel.center.y + -3.5)
                                self.mTextLabel.center = CGPoint(x: self.mTextLabel.center.x + 2, y: self.mTextLabel.center.y + -3.5)
                                self.bTextLabel.center = CGPoint(x: self.bTextLabel.center.x + -2, y: self.bTextLabel.center.y + -3.5)
                                self.dTextLabel.center = CGPoint(x: self.dTextLabel.center.x + 2, y: self.dTextLabel.center.y + -3.5)
                                self.a2TextLabel.center = CGPoint(x: self.a2TextLabel.center.x + -2, y: self.a2TextLabel.center.y + -3.5)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5,
                               relativeDuration: 0.5) {
                                self.lTextLabel.transform = CGAffineTransform(rotationAngle: .pi * 12)
                                self.a1TextLabel.transform = CGAffineTransform(rotationAngle: .pi * 12)
                                self.mTextLabel.transform = CGAffineTransform(rotationAngle: .pi * 12)
                                self.bTextLabel.transform = CGAffineTransform(rotationAngle: .pi * 12)
                                self.dTextLabel.transform = CGAffineTransform(rotationAngle: .pi * 12)
                                self.a2TextLabel.transform = CGAffineTransform(rotationAngle: .pi * 12)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5,
                               relativeDuration: 0.5) {
                                self.lTextLabel.center = CGPoint(x: CGFloat.random(in: self.view.bounds.minX...self.view.bounds.maxX), y: CGFloat.random(in: self.view.bounds.minY...self.view.bounds.maxY))
                                self.a1TextLabel.center = CGPoint(x: CGFloat.random(in: self.view.bounds.minX...self.view.bounds.maxX), y: CGFloat.random(in: self.view.bounds.minY...self.view.bounds.maxY))
                                self.mTextLabel.center = CGPoint(x: CGFloat.random(in: self.view.bounds.minX...self.view.bounds.maxX), y: CGFloat.random(in: self.view.bounds.minY...self.view.bounds.maxY))
                                self.bTextLabel.center = CGPoint(x: CGFloat.random(in: self.view.bounds.minX...self.view.bounds.maxX), y: CGFloat.random(in: self.view.bounds.minY...self.view.bounds.maxY))
                                self.dTextLabel.center = CGPoint(x: CGFloat.random(in: self.view.bounds.minX...self.view.bounds.maxX), y: CGFloat.random(in: self.view.bounds.minY...self.view.bounds.maxY))
                                self.a2TextLabel.center = CGPoint(x: CGFloat.random(in: self.view.bounds.minX...self.view.bounds.maxX), y: CGFloat.random(in: self.view.bounds.minY...self.view.bounds.maxY))
            }
            
            
            
            
            
            
            
        }
        
        UIView.animateKeyframes(withDuration: 3.14,
                                delay: 0,
                                options: [],
                                animations: scatterAnimations,
                                completion: nil)
        
        UIView.animateKeyframes(withDuration: 0.96,
                                delay: 0,
                                options: [],
                                animations: {
                                    self.lTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...256),
                                                                              green: CGFloat.random(in: 0...256),
                                                                              blue: CGFloat.random(in: 0...256),
                                                                              alpha: 1)
                                    self.a1TextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...256),
                                                                              green: CGFloat.random(in: 0...256),
                                                                              blue: CGFloat.random(in: 0...256),
                                                                              alpha: 1)
                                    self.mTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...256),
                                                                              green: CGFloat.random(in: 0...256),
                                                                              blue: CGFloat.random(in: 0...256),
                                                                              alpha: 1)
                                    self.bTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...256),
                                                                              green: CGFloat.random(in: 0...256),
                                                                              blue: CGFloat.random(in: 0...256),
                                                                              alpha: 1)
                                    self.dTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...256),
                                                                              green: CGFloat.random(in: 0...256),
                                                                              blue: CGFloat.random(in: 0...256),
                                                                              alpha: 1)
                                    self.a2TextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...256),
                                                                              green: CGFloat.random(in: 0...256),
                                                                              blue: CGFloat.random(in: 0...256),
                                                                              alpha: 1)
        },
                                completion: nil)
        
    }
    
    private func gather() {
        
    }

}
