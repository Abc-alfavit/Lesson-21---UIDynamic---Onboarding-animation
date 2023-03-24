//
//  FinishVC.swift
//  Lesson 21 - UIDynamic - Onboarding line
//
//  Created by Валентин Ремизов on 24.03.2023.
//

import UIKit

class FinishVC: UIViewController {
    private let hiLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        hiLabel.center = view.center
        hiLabel.text = "Hi, it is app"
        hiLabel.textColor = .black
        hiLabel.center = view.center
        hiLabel.font = .boldSystemFont(ofSize: 30)
        hiLabel.textAlignment = .center
        view.addSubview(hiLabel)
    }
}
