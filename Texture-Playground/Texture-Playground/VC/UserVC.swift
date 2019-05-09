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
    let items: [String] = ["function1","function2","function3"]
    
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
        node.maximumNumberOfLines = 1
        return node
    }()
    
    lazy var funcTableNode: ASTableNode = {
        let node = ASTableNode()
        node.backgroundColor = .white
        node.delegate = self
        node.dataSource = self
        return node
    }()
    
    init() {
        super.init(node: ASDisplayNode())
        node.backgroundColor = .white
        node.automaticallyManagesSubnodes = true
        node.layoutSpecBlock = {[weak self] (_,_) -> ASLayoutSpec in
            guard let strongSelf = self else { return ASLayoutSpec() }
            return ASStackLayoutSpec(direction: .vertical,
                                     spacing: 0.0,
                                     justifyContent: .center,
                                     alignItems: .center,
                                     children: [strongSelf.userProfileImageNode,
                                                strongSelf.userNameNode,
                                                strongSelf.funcTableNode])
        }
        
        node.onDidLoad { _ in
            self.funcTableNode.view.separatorStyle = .singleLine
            self.funcTableNode.view.isScrollEnabled = false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UserVC : ASTableDelegate, ASTableDataSource{
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        return{
            guard self.items.count > indexPath.row else { return ASCellNode() }
            let viewModel = ViewModel(item: self.items[indexPath.row])
            let cell = functionCellNode(viewModel: viewModel)
            
            return cell
        }
    }
}
