//
//  UIViewController+PopPresentable.swift
//  UIViewController+PopPresentable
//
//  Created by Shabeer Hussain on 17/10/2016.
//  Copyright © 2016 Desert Monkey. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func presentViewControllerAsPopover(_ viewControllerToPresent: UIViewController, permittedArrowDirections: UIPopoverArrowDirection, sourceView: UIView?, sourceRect: CGRect, delegate:UIPopoverPresentationControllerDelegate?, animated: Bool, completion: (() -> Void)?) {
        
        viewControllerToPresent.modalPresentationStyle = .popover
        viewControllerToPresent.popoverPresentationController?.sourceView = sourceView
        viewControllerToPresent.popoverPresentationController?.sourceRect = sourceRect
        viewControllerToPresent.popoverPresentationController?.delegate = delegate
        viewControllerToPresent.popoverPresentationController?.permittedArrowDirections = permittedArrowDirections
        
        self.present(viewControllerToPresent, animated: animated, completion: completion)
    }
}
