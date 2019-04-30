//
//  SignUpVC.swift
//  Texture-Playground
//
//  Created by 조우진 on 03/04/2019.
//
import Foundation
import AsyncDisplayKit
import RxASControlEvent
import RxSwift
import RxCocoa

class SignUpVC : ASViewController<ASDisplayNode>{
    
    init(){
        super.init(node: ASDisplayNode())
        node.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    lazy var IdEditNode : ASEditableTextNode  = { () -> ASEditableTextNode in
//        let node = ASEditableTextNode()
//        node.style.preferredSize = CGSize(width: 280.0, height: 20)
//        node.attributedPlaceholderText = NSAttributedString(string: "아이디를 입력해주세요.", attributes: [
//            .font : UIFont.systemFont(ofSize: 15),
//            .foregroundColor: UIColor.gray])
//        return node
//    }()
//
//    lazy var PassWordEditNode : ASEditableTextNode = { () -> ASEditableTextNode in
//        let node = ASEditableTextNode()
//        node.style.preferredSize = CGSize(width: 280.0, height: 20)
//        node.attributedPlaceholderText = NSAttributedString(string: "비밀번호를 입력해주세요.", attributes: [
//            .font: UIFont.systemFont(ofSize: 15),
//            .foregroundColor: UIColor.gray])
//        return node
//    }()
//
//    lazy var UserNameEditNode : ASEditableTextNode = { () -> ASEditableTextNode in
//        let node = ASEditableTextNode()
//        node.style.preferredSize = CGSize(width: 280.0, height: 20)
//        node.attributedPlaceholderText = NSAttributedString(string: "닉네임을 입력해주세요.", attributes: [
//            .font: UIFont.systemFont(ofSize: 15),
//            .foregroundColor: UIColor.gray])
//        return node
//    }()
//
//    lazy var underLineNode : ASDisplayNode = { () -> ASDisplayNode in
//        let node = ASDisplayNode()
//        node.style.preferredSize = CGSize(width: 280.0, height: 1)
//        node.backgroundColor = .gray
//        return node
//    }()
//
//
//    init() {
//        super.init(node: ASDisplayNode())
//        node.automaticallyManagesSubnodes = true
//
//        node.layoutSpecBlock = { [weak self] (_,_) in
//            guard let strongSelf = self else { return ASLayoutSpec() }
//
//            let idStackLayout = strongSelf.IdStackinit()
//            let passwordStackLayout = strongSelf.PassWordStackinit()
//            let usernameStackLayout = strongSelf.UserNameStackinit()
//
//            let stackLayout = ASStackLayoutSpec(direction: .vertical, spacing: 50.0, justifyContent: .center, alignItems: .center , children: [
//                strongSelf.IdEditNode,
//                strongSelf.PassWordEditNode,
//                strongSelf.UserNameEditNode])
//
//            return ASInsetLayoutSpec(insets: .init(top: .infinity, left: .infinity, bottom: .infinity, right: .infinity), child: stackLayout)
//        }
//
//        node.onDidLoad { _ in
//            self.navigationController?.isNavigationBarHidden = false
//        }
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//extension SignUpVC {
//
//    func IdStackinit() -> ASStackLayoutSpec {
//        return ASStackLayoutSpec(direction: .vertical,
//                                 spacing: 5.0,
//                                 justifyContent: .center,
//                                 alignItems: .center,
//                                 children: [IdEditNode, underLineNode])
//    }
//
//    func PassWordStackinit() -> ASStackLayoutSpec {
//        return ASStackLayoutSpec(direction: .vertical,
//                                 spacing: 5.0,
//                                 justifyContent: .center,
//                                 alignItems: .center,
//                                 children: [PassWordEditNode, underLineNode])
//    }
//
//    func UserNameStackinit() -> ASStackLayoutSpec {
//        return ASStackLayoutSpec(direction: .vertical,
//                                 spacing: 5.0,
//                                 justifyContent: .center,
//                                 alignItems: .center,
//                                 children: [UserNameEditNode, underLineNode])
//    }
}
