//
//  DeliveryVC.swift
//  Lesson 21 - UIDynamic - Onboarding line
//
//  Created by Валентин Ремизов on 24.03.2023.
//

import UIKit

class DeliveryVC: UIViewController {

    private let deliveryIV = UIImageView(image: UIImage(named: "Delivery"))
    private let descriptionLabel = UILabel()
    private let showButton = UIButton()

    override func viewDidAppear(_ animated: Bool) {
        createDelivery()
        createDescription()
        createAnimation()
        createButton()
        createAnimationButton()
    }

    private func createDelivery() {
        deliveryIV.frame = CGRect(x: -300,
                              y: self.view.center.y - 150,
                              width: 150,
                              height: 150)
        deliveryIV.contentMode = .scaleAspectFit
        deliveryIV.isHidden = true
        view.addSubview(deliveryIV)
    }

    private func createDescription() {
        descriptionLabel.text = "Our delivery will be at you across 15 minutes"
        descriptionLabel.frame = CGRect(x: view.frame.maxX,
                                        y: deliveryIV.frame.maxY + 30,
                                        width: view.frame.width - 100,
                                        height: 70)
        descriptionLabel.font = UIFont(name: "Futura", size: 25)
        descriptionLabel.textColor = .white
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.isHidden = true
        view.addSubview(descriptionLabel)
    }

    private func createAnimation() {
//MARK: - Animation for cart image
        deliveryIV.isHidden = false
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.3,
                       options: .curveEaseInOut,
                       animations: {
            self.deliveryIV.frame = CGRect(x: self.view.center.x - 75,
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
                                                 y: self.deliveryIV.frame.maxY + 30,
                                                 width: self.view.frame.width - 100,
                                                 height: 70)
        })
    }

    private func createAnimationButton() {
        UIView.animate(withDuration: 0.5, delay: 2) {
            self.showButton.alpha = 1
        }
    }

    private func createButton() {
        showButton.frame = CGRect(x: 0, y: descriptionLabel.frame.maxY + 50, width: 200, height: 40)
        showButton.center.x = view.center.x
        showButton.setTitle("Show me app", for: .normal)
        showButton.setTitleColor(.white, for: .normal)
        showButton.backgroundColor = .systemBlue
        showButton.layer.cornerRadius = 15
        showButton.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        showButton.alpha = 0
        view.addSubview(showButton)
    }

    @objc private func pressedButton() {
        navigationController?.pushViewController(FinishVC(), animated: true)
    }
}
