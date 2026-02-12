//
//  UOBasicButtonBuilder.swift
//  UOComponents
//
//  Created by Ünsal Öner on 12.02.2026.
//

import UIKit

final class UOBasicButtonBuilder: UOBaseComponentBuilder<UIButton> {

    init(type: UIButton.ButtonType = .system) {
        super.init(view: UIButton(type: type))
    }
    
    private var interactionHandler: UOButtonInteractionHandler {
        if let handler = objc_getAssociatedObject(view, &AssociatedKeys.interactionHandler) as? UOButtonInteractionHandler {
            return handler
        }
        let handler = UOButtonInteractionHandler(button: view)
        objc_setAssociatedObject(view, &AssociatedKeys.interactionHandler, handler, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return handler
    }
}

extension UOBasicButtonBuilder {

    @discardableResult
    func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        view.setTitle(title, for: state)
        return self
    }

    @discardableResult
    func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> Self {
        view.setTitleColor(color, for: state)
        return self
    }

    @discardableResult
    func font(_ font: UIFont) -> Self {
        view.titleLabel?.font = font
        return self
    }

    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        view.setImage(image, for: state)
        return self
    }

    @discardableResult
    func contentInsets(_ insets: UIEdgeInsets) -> Self {
        view.contentEdgeInsets = insets
        return self
    }

    @discardableResult
    func enabled(_ isEnabled: Bool) -> Self {
        view.isEnabled = isEnabled
        return self
    }

    @discardableResult
    func onTap(target: Any?, action: Selector) -> Self {
        view.addTarget(target, action: action, for: .touchUpInside)
        return self
    }
}

extension UOBasicButtonBuilder {
    
    @discardableResult
    func haptic(_ style: UIImpactFeedbackGenerator.FeedbackStyle = .medium) -> Self {
        interactionHandler.hapticStyle = style
        return self
    }
    
    @discardableResult
    func jumpAnimation(scale: CGFloat = 0.92, duration: TimeInterval = 0.12) -> Self {
        interactionHandler.animationScale = scale
        interactionHandler.animationDuration = duration
        return self
    }
}
