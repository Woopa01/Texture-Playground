//
//  Base.swift
//  Texture-Playground
//
//  Created by 조우진 on 03/04/2019.
//

import Foundation
import AsyncDisplayKit

extension ASViewController{
    @objc func showToast(msg: String, fun: (() -> Void)? = nil){
        let toast = UILabel(frame: CGRect(x: 32, y: 700, width: view.frame.size.width - 64, height: 42))
        toast.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        toast.textColor = UIColor.white
        toast.text = msg
        toast.textAlignment = .center
        toast.layer.cornerRadius = 8
        toast.clipsToBounds = true
        toast.autoresizingMask = [.flexibleTopMargin, .flexibleHeight, .flexibleWidth]
        view.addSubview(toast)
        UIView.animate(withDuration: 1, delay: 0.8, options: .curveEaseOut, animations: {
            toast.alpha = 0.0
        }, completion: { _ in
            toast.removeFromSuperview()
            fun?()
        })
    }

}
