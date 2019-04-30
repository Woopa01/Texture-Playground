//
//  UserVC.swift
//  Texture-Playground
//
//  Created by 조우진 on 29/04/2019.
//

import Foundation
import AsyncDisplayKit
import RxSwift
import RxCocoa

class UserVC: ASViewController<ASDisplayNode> {
    
    let item: [String] = ["function1","function2","function3"]
    
    lazy var userProfileImageNode: ASImageNode = {
        let node = ASImageNode()
        node.style.preferredSize = CGSize(width: 50.0, height: 50.0)
        node.cornerRadius = 25.0
        node.image = UIImage(named: "user")
        node.borderWidth = 2
        node.borderColor = UIColor.black.withAlphaComponent(0.5).cgColor
        return node
    }()
    
    lazy var userNameNode: ASTextNode = {
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "userName", attributes:
            [.foregroundColor: UIColor.black,
             .font: UIFont.systemFont(ofSize: 15, weight: .bold)])
        return node
    }()
    
    lazy var funcTableNode: ASTableNode = {
        let node = ASTableNode()
        node.backgroundColor = .white
        return node
    }()
    
    init() {
        super.init(node: ASDisplayNode())
        self.funcTableNode.view.separatorStyle = .singleLine
        self.funcTableNode.view.isScrollEnabled = false
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
