//
//  UOBasicButton+Styles.swift
//  UOComponents
//
//  Created by Ünsal Öner on 12.02.2026.
//

import UIKit

extension UOBasicButtonBuilder {
    
    @discardableResult
    func primaryStyle() -> Self {
        return self
            .backgroundColor(UOColor.primary)
            .titleColor(.white)
            .font(UOFont.button())
            .cornerRadius(12)
            .haptic()
            .jumpAnimation()
            .contentInsets(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
    }
    
    @discardableResult
    func secondaryStyle() -> Self {
        return self
            .backgroundColor(UOColor.surface)
            .titleColor(UOColor.primary)
            .font(UOFont.button())
            .cornerRadius(12)
            .border(width: 1.5, color: UOColor.primary)
            .contentInsets(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
    }
  
    @discardableResult
    func continueStyle() -> Self {
        return self
            .backgroundColor(UOColor.primary)
            .title("CONTINUE")
            .titleColor(.white)
            .font(UOFont.button())
            .cornerRadius(12)
            .haptic()
            .jumpAnimation()
            .contentInsets(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
            
    }
  
    
}
