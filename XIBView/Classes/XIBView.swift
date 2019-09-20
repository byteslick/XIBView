//
//  XIBView.swift
//  Kinder Learn
//
//  Created by Madhup Yadav on 18/08/19.
//  Copyright © 2019 Kinder Learn. All rights reserved.
//

import UIKit

@IBDesignable
open class XIBView: UIView {
    
    private var contentView:UIView?
    
    @IBInspectable public var nibName:String?
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        xibSetup()
    }
    
    func xibSetup() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask =
            [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(
            withOwner: self,
            options: nil).first as? UIView
    }
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        xibSetup()
        contentView?.prepareForInterfaceBuilder()
    }

}
