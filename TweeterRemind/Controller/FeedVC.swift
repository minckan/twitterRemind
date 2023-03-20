//
//  FeedVC.swift
//  TweeterRemind
//
//  Created by MZ01-MINCKAN on 2023/03/16.
//

import UIKit

class FeedVC: UIViewController {

    // MARK: - Properties
    var user : User? {
        didSet {
            
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureLeftBarButton()
    }
    
    // MARK: - Selectors
    
    // MARK: - API
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        imageView.setDimensions(width: 44, height: 44)
        navigationItem.titleView = imageView
    }
    
    func configureLeftBarButton() {
        let profileImageView = UIView()
        profileImageView.setDimensions(width: 32, height: 32)
        profileImageView.backgroundColor = .twitterBlue
        profileImageView.layer.cornerRadius = 32 / 2
        profileImageView.layer.masksToBounds = true // Web CSS overflow: hidden 같은 역할을 한다.
        // TODO: view.layer의 역할이 뭘까?
        // view를 그려주는 역할?
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
    }
    
}
