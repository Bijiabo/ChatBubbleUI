//
//  RightPostTableViewCell.swift
//  ChatBubbleUI
//
//  Created by huchunbo on 16/2/8.
//  Copyright © 2016年 Bijiabo. All rights reserved.
//

import UIKit

class RightPostTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var backgroundContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .None
        
        backgroundContainerView.backgroundColor = UIColor(red:0.08, green:0.54, blue:0.97, alpha:1)
        backgroundContainerView.layer.cornerRadius = 16.0
        
        _displayAnimation()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var content: String = String() {
        didSet {
            contentLabel.text = content
        }
    }
    
    override func prepareForReuse() {
        
        _displayAnimation()
        
    }
    
    private func _displayAnimation() {
        frame.origin.x = frame.size.width
        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.05, options: UIViewAnimationOptions.BeginFromCurrentState, animations: { () -> Void in
            
            self.frame.origin.x = 0
            
            }, completion: nil)
    }

}
