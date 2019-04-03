//
//  ViewController.swift
//  Texture-Playground
//
//  Created by 조우진 on 02/04/2019.
//

import AsyncDisplayKit
import RxSwift
import RxCocoa

class ViewController: ASViewController<ASDisplayNode> {
    
    lazy var titleNode : ASTextNode = { () -> ASTextNode in
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "MOS", attributes: [
            .font: UIFont(name: "DIN Condensed", size: 55)!,
            .foregroundColor : Color.RED.getColor()])
        return node
    }()
    
    lazy var desc1Node : ASTextNode = { () -> ASTextNode in
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "내가 보고 싶은 것만,", attributes: [
            .font: UIFont.systemFont(ofSize: 20)])
        return node
    }()
    
    lazy var desc2Node : ASTextNode = { () -> ASTextNode in
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "나만의 작은 SNS", attributes: [
            .font: UIFont.systemFont(ofSize: 20)])
        return node
    }()

    lazy var fbButtonNode : ASButtonNode = { () -> ASButtonNode in
        let node = ASButtonNode()
        node.style.preferredSize = CGSize(width: 280.0, height: 50.0)
        node.cornerRadius = 25.0
        node.shadowOpacity = 0.5
        node.shadowOffset = CGSize.init(width: 1, height: 1)
        node.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
        node.setTitle("페이스북으로 시작하기", with: UIFont.systemFont(ofSize: 15, weight: .medium), with: .white , for: UIControl.State.normal)
        node.backgroundColor = Color.BLUE.getColor()
        return node
    }()
    
    lazy var emailButtonNode : ASButtonNode = { () -> ASButtonNode in
        let node = ASButtonNode()
        node.style.preferredSize = CGSize(width: 280.0, height: 50.0)
        node.cornerRadius = 25.0
        node.shadowOpacity = 0.5
        node.shadowOffset = CGSize.init(width: 1, height: 1)
        node.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
        node.setTitle("이메일로 시작하기", with: UIFont.systemFont(ofSize: 15, weight: .medium), with: .black , for: UIControl.State.normal)
        node.backgroundColor = .white
        node.borderWidth = 0.5
        return node
    }()
    
    
    init() {
        super.init(node: ASDisplayNode())
        title = "hello!"
        
        node.automaticallyManagesSubnodes = true
        node.layoutSpecBlock = {[weak self] (_,_) -> ASLayoutSpec in
            guard  let strongSelf = self else { return ASLayoutSpec() }
            strongSelf.titleNode.style.spacingBefore = 50.0
            strongSelf.desc1Node.style.spacingAfter = 5.0
            strongSelf.desc2Node.style.spacingAfter = 300.0
            strongSelf.fbButtonNode.style.spacingAfter = 10.0
            
            
            return ASStackLayoutSpec(direction: .vertical,
                                     spacing: 0.5,
                                     justifyContent: .center,
                                     alignItems: .center,
                                     children: [strongSelf.titleNode,
                                                strongSelf.desc1Node,
                                                strongSelf.desc2Node,
                                                strongSelf.fbButtonNode,
                                                strongSelf.emailButtonNode])
           
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ViewController {
    @objc func fbBtnClicked() {
        
    }
}

