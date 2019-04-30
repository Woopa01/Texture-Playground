//
//  Cell.swift
//  Texture-Playground
//
//  Created by 조우진 on 30/04/2019.
//

import Foundation
import RxSwift
import AsyncDisplayKit

class functionCell: ASCellNode  {
    lazy var titleNode: ASTextNode = {
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "hello", attributes:
            [.foregroundColor: UIColor.black])
        return node
    }()
    
}
