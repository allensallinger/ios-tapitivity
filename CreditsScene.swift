//
//  CreditsScene.swift
//  tapitivity
//
//  Created by ALLEN SALLINGER on 8/5/15.
//  Copyright (c) 2015 GSD. All rights reserved.
//

import Foundation
import SpriteKit

class CreditsScene: SKScene{
    
    let bg = SKSpriteNode(imageNamed: "background_small")
    let backLabel = SKLabelNode()
    let credits = SKSpriteNode(imageNamed: "credits")
    
    override init(size: CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor.whiteColor()
        
    }
    
    override func didMoveToView(view: SKView) {
        
        addChild(bg)
        
        // Create the store label
        //let storeHello = SKLabelNode()
        credits.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(credits)
        
        // Create the back button
        //let backLabel = SKLabelNode()
        backLabel.text = "Back"
        backLabel.position = CGPoint(x: size.width * 0.1, y: size.height * 0.95)
        backLabel.fontColor = SKColor.blackColor()
        addChild(backLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        if let touch = touches.first as? UITouch{
            
            let touchLocation = touch.locationInNode(self)
            
            if(backLabel.containsPoint(touchLocation)){
                
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let optionsScene = OptionsScene(size: self.size)
                self.view?.presentScene(optionsScene)
                
            }
            
        }
        
        
        
    }
    
}