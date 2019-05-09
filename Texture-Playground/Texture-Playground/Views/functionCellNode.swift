//
//  Cell.swift
//  Texture-Playground
//
//  Created by 조우진 on 30/04/2019.
//

import Foundation
import AsyncDisplayKit
import RxSwift
import RxCocoa_Texture


class functionCellNode: ASCellNode  {
    
    lazy var titleNode: ASTextNode = {
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "hello", attributes:
            [.foregroundColor: UIColor.black])
        node.maximumNumberOfLines = 1
        return node
    }()
    
    let disposeBag = DisposeBag()
    
    init(viewModel: ViewModel) {
        super.init()
        self.backgroundColor = .white
        self.selectionStyle = .none
        self.automaticallyManagesSubnodes = true
        
        viewModel.title
        .bind(to: titleNode.rx.text(titleAttribute),setNeedsLayout: self)
        .disposed(by: disposeBag)
        
    }
}

extension functionCellNode {
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        titleNode.style.flexShrink = 1.0
        titleNode.style.flexGrow = 0.0
        return ASInsetLayoutSpec(insets: .init(top: .infinity, left: .infinity, bottom: .infinity, right: .infinity), child: titleNode)
    }
}

extension functionCellNode {
    var titleAttribute: [NSAttributedString.Key: Any]{
        return [.foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 15)]
    }
}



