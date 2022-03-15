//
//  CheckBoxController.swift
//  SnapKitTest
//
//  Created by Renat Murtazin on 12.03.2022.
//

import UIKit

class CheckBoxController: NSObject {
    var buttonsArray: [UIButton]! {
        didSet {
            for b in buttonsArray {
                b.setImage(UIImage(named: "check-on"), for: .selected)
                b.setImage(UIImage(named: "check-off"), for: .normal)
            }
        }
    }
    
    var selectedButtons: [UIButton] = []
    var defaultButton: UIButton = UIButton() {
        didSet {
            buttonArrayUpdated(buttonSelected: self.defaultButton)
        }
    }
    var defaultButtonFromShops: UIButton = UIButton() {
        didSet {
            buttonArrayUpdated(buttonSelected: self.defaultButtonFromShops)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func buttonArrayUpdated(buttonSelected: UIButton) {
        for b in buttonsArray {
            if ((b == buttonSelected) && !b.isSelected) {
                selectedButtons.append(b)
                b.isSelected = true
            } else if b == buttonSelected && b.isSelected {
                selectedButtons = selectedButtons.filter {
                    $0 !== b
                }
                b.isSelected = false
            }
        }
    }
}
