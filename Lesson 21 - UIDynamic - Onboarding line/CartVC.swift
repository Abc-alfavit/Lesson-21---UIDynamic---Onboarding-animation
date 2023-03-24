//
//  ViewController.swift
//  Lesson 21 - UIDynamic - Onboarding line
//
//  Created by Валентин Ремизов on 19.03.2023.
//

import UIKit

/*
 UIDynamicAnimator
 UIGravityBehevior - обеспечивает тяготение
 UICollisionBehevior - обнаружение столкновений
 UIPushBehevior - реагирует на толчки
 UISnapBehevior - крепит вью к определенной точке
 UIAttachmentBehavior - привязка
 UISnapBehavior - снимок (на втором vc)
 */


final class CartVC: UIViewController {

//    private let lineIV = UIImageView(image: UIImage(named: "Line"))
//    private let cashIV = UIImageView(image: UIImage(named: "Cash"))
    private let cartIV = UIImageView(image: UIImage(named: "Cart"))
    private let descriptionLabel = UILabel()
//    private let phoneIV = UIImageView(image: UIImage(named: "Phone"))
//    private let deliveryIV = UIImageView(image: UIImage(named: "Delivery"))

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .brown
        createCart()
        createDescription()
        appearViewElements()
    }

    private func createCart() {
        cartIV.frame = CGRect(x: -300,
                              y: self.view.center.y - 150,
                              width: 150,
                              height: 150)
        cartIV.contentMode = .scaleAspectFit
        cartIV.isHidden = true
        view.addSubview(cartIV)
    }

    private func createDescription() {
        descriptionLabel.text = "Collect your cart in our shop"
        descriptionLabel.frame = CGRect(x: view.frame.maxX,
                                        y: cartIV.frame.maxY + 30,
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
        cartIV.isHidden = false
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.3,
                       options: .curveEaseInOut,
                       animations: {
            self.cartIV.frame = CGRect(x: self.view.center.x - 75,
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
                                                 y: self.cartIV.frame.maxY + 30,
                                                 width: self.view.frame.width - 100,
                                                 height: 70)
        })
    }

}

