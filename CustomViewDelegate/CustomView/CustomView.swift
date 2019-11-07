//
//  CustomView.swift
//  CustomViewDelegate
//
//  Created by Irvin Leon on 11/7/19.
//  Copyright © 2019 Irvin Leon. All rights reserved.
//

import UIKit

protocol CustomViewProtocol {
    func someAction()
}

class CustomView: UIView {
    
    var delegate: CustomViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        let bundle = Bundle.init(for: CustomView.self)
        if let viewsToAdd = bundle.loadNibNamed("CustomView", owner: self, options: nil), let contentView = viewsToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight,
                                            .flexibleWidth]
        }
    }
    
    @IBAction func clicked(_ sender: Any) {
        delegate?.someAction()
    }
    
}
