//
//  ViewController2.swift
//  Lesson 21 - UIDynamic - Onboarding line
//
//  Created by Валентин Ремизов on 19.03.2023.
//

import UIKit

class CashVC: UIViewController {
    private let cashIV = UIImageView(image: UIImage(named: "Cash"))
    private let descriptionLabel = UILabel()


    override func viewDidAppear(_ animated: Bool) {
        view.backgroundColor = .brown
        createCash()
        createDescription()
        appearViewElements()
    }

    private func createCash() {
        cashIV.frame = CGRect(x: -300,
                              y: self.view.center.y - 150,
                              width: 150,
                              height: 150)
        cashIV.contentMode = .scaleAspectFit
        cashIV.isHidden = true
        view.addSubview(cashIV)
    }

    private func createDescription() {
        descriptionLabel.text = "You can pay your order for cash"
        descriptionLabel.frame = CGRect(x: view.frame.maxX,
                                        y: cashIV.frame.maxY + 30,
                                        width: view.frame.width - 100,
                                        height: 70)
        descriptionLabel.font = UIFont(name: "Futura", size: 25)
        descriptionLabel.textColor = .white
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.isHidden = true
        view.addSubview(descriptionLabel)
    }

    private func appearViewElements() {
//MARK: - Animation for cart image
        cashIV.isHidden = false
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.3,
                       options: .curveEaseInOut,
                       animations: {
            self.cashIV.frame = CGRect(x: self.view.center.x - 75,
                                       y: self.view.center.y - 150,
                                       width: 150,
                                       height: 150)
        })

//MARK: - Animation for description label
        descriptionLabel.isHidden = false
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.3,
                       options: .curveEaseInOut,
                       animations: {
            self.descriptionLabel.frame = CGRect(x: 50,
                                                 y: self.cashIV.frame.maxY + 30,
                                                 width: self.view.frame.width - 100,
                                                 height: 70)
        })
    }
}
