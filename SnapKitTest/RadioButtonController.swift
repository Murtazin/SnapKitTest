//
//  RadioButtonController.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 07.03.2022.
//

import UIKit

class RadioButtonController {
    
    var buttonsArray: [UIButton]! {
        didSet {
            for b in buttonsArray {
                b.setImage(UIImage(named: "radio-off"), for: .normal)
                b.setImage(UIImage(named: "radio-on"), for: .selected)
            }
        }
    }
    var selectedButton: UIButton?
    var defaultButton: UIButton = UIButton() {
        didSet {
            buttonArrayUpdated(buttonSelected: self.defaultButton)
        }
    }
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
    
    func buttonArrayUpdated(buttonSelected: UIButton) {
        for b in buttonsArray {
            if b == buttonSelected {
                selectedButton = b
                b.isSelected = true
            } else {
                b.isSelected = false
            }
        }
    }
}
