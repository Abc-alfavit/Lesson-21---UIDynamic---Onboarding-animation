//
//  PhoneVC.swift
//  Lesson 21 - UIDynamic - Onboarding line
//
//  Created by Валентин Ремизов on 24.03.2023.
//

import UIKit

class PhoneVC: UIViewController {

    private let phoneIV = UIImageView(image: UIImage(named: "Phone"))
    private let descriptionLabel = UILabel()

    override func viewDidAppear(_ animated: Bool) {
        view.backgroundColor = .brown
        createPhone()
        createDescription()
        createAnimation()
    }
    

    private func createPhone() {
        phoneIV.frame = CGRect(x: -300,
                              y: self.view.center.y - 150,
                              width: 150,
                              height: 150)
        phoneIV.isHidden = true
        phoneIV.contentMode = .scaleToFill
        phoneIV.layer.cornerRadius = phoneIV.frame.height / 2
        view.addSubview(phoneIV)
    }

    private func createDescription() {
        descriptionLabel.frame = CGRect(x: view.frame.maxX,
                                        y: phoneIV.frame.maxY + 30,
                                        width: view.frame.width - 100,
                                        height: 70)
        descriptionLabel.text = "In our app you can order for yourself products"
        descriptionLabel.textColor = .white
        descriptionLabel.font = UIFont(name: "Futura", size: 25)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.isHidden = true
        view.addSubview(descriptionLabel)
    }

    private func createAnimation() {
//MARK: - Animation for image
        phoneIV.isHidden = false
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.3,
                       options: .curveEaseInOut,
                       animations: {
            self.phoneIV.frame = CGRect(x: self.view.center.x - 75,
                                       y: self.view.center.y - 150,
                                       width: 150,
                                       height: 150)
        })

//MARK: - Animation for description
        descriptionLabel.isHidden = false
        UIView.animate(withDuration: 1.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.3,
                       options: .curveEaseInOut,
                       animations: {
            self.descriptionLabel.frame = CGRect(x: 50,
                                                 y: self.phoneIV.frame.maxY + 30,
                                                 width: self.view.frame.width - 100,
                                                 height: 70)
        })
    }
}
