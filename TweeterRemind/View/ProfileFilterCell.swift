//
//  ProfileFilterCell.swift
//  TweeterRemind
//
//  Created by MZ01-MINCKAN on 2023/03/20.
//

import UIKit

class ProfileFilterCell : UICollectionViewCell {
    
    // MARK: - Properties
    var option: ProfileFilterOption! {
        didSet {
            titleLabel.text = option.description
        }
    }
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(titleLabel)
        titleLabel.center(inView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
