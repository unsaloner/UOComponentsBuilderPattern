//
//  UOBaseComponentBuilder.swift
//  UOComponents
//
//  Created by Ünsal Öner on 12.02.2026.
//

import UIKit

class UOBaseComponentBuilder<View: UIView> {

    internal let view: View

    init(view: View) {
        self.view = view
    }

    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        view.backgroundColor = color
        return self
    }

    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        view.layer.cornerRadius = radius
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clips: Bool = true) -> Self {
        view.clipsToBounds = clips
        return self
    }

    @discardableResult
    func border(width: CGFloat, color: UIColor) -> Self {
        view.layer.borderWidth = width
        view.layer.borderColor = color.cgColor
        return self
    }

    @discardableResult
    func alpha(_ value: CGFloat) -> Self {
        view.alpha = value
        return self
    }

    @discardableResult
    func hidden(_ hidden: Bool) -> Self {
        view.isHidden = hidden
        return self
    }
    
    @discardableResult
    func shadow(color: UIColor = .black,
                opacity: Float = 0.2,
                offset: CGSize = .init(width: 0, height: 2),
                radius: CGFloat = 4) -> Self {
        view.layer.shadowColor = color.cgColor
        view.layer.shadowOpacity = opacity
        view.layer.shadowOffset = offset
        view.layer.shadowRadius = radius
        view.clipsToBounds = false
        return self
    }

    func build() -> View {
        view
    }
}
