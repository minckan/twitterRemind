//
//  TweetHeader.swift
//  TweeterRemind
//
//  Created by MZ01-MINCKAN on 2023/03/22.
//

import UIKit

class TweetHeader: UICollectionReusableView {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
