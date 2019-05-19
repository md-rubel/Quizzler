//
//  ButtonStyle.swift
//  Quizzler
//
//  Created by MD RUBEL on 20/5/19.
//  Copyright © 2019 MD RUBEL. All rights reserved.
//

import UIKit

class ButtonStyle: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor     = UIColor(red: 0, green: 192/255, blue: 255/255, alpha: 1)
        titleLabel?.font    = UIFont(name: "AvenirNextCondensed-DemiBold", size: 22)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}
