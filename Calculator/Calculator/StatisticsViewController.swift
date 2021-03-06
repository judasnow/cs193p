//
//  StatisticsViewController.swift
//  Calculator
//
//  Created by Vojta Molda on 3/22/15.
//  Copyright (c) 2015 Vojta Molda. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView! {
        didSet { textView.text = text }
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }

    override var preferredContentSize: CGSize {
        get {
            if textView != nil && presentingViewController != nil {
                return textView.sizeThatFits(presentingViewController!.view.bounds.size)
            }
            return super.preferredContentSize
        }
        set { super.preferredContentSize = newValue }
    }
    
}
