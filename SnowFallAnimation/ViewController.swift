//
//  ViewController.swift
//  SnowFallAnimation
//
//  Created by Albin CR on 4/25/18.
//  Copyright © 2018 CR-creation.Gem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let showEmitterCell: CAEmitterCell = {
        let emitterCell = CAEmitterCell()
        emitterCell.contents = UIImage(named: "flake")?.cgImage
        emitterCell.scale = 0.06
        emitterCell.scaleRange = 0.3
        emitterCell.emissionRange = .pi
        emitterCell.lifetime = 20.0
        emitterCell.birthRate = 30
        emitterCell.velocity = -30
        emitterCell.velocityRange = -20
        emitterCell.yAcceleration = 30
        emitterCell.xAcceleration = 5
        emitterCell.spin = -0.5
        emitterCell.spinRange = 1.0
        return emitterCell
    }()
    
    lazy var snowEmitterLayer:CAEmitterLayer = {
        let emitterLayer =  CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2.0, y: -50)
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        emitterLayer.emitterShape = kCAEmitterLayerCuboid
        emitterLayer.beginTime = CACurrentMediaTime()
        emitterLayer.timeOffset = 10
        emitterLayer.emitterCells = [self.showEmitterCell]
        
        return emitterLayer
    }()
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(snowEmitterLayer)
        
    }

   

}

