//
//  PageViewController.swift
//  Lesson 21 - UIDynamic - Onboarding line
//
//  Created by Валентин Ремизов on 19.03.2023.
//

import UIKit

class PageViewController: UIPageViewController {
    private let arrayVC = [PhoneVC(), CartVC(), CashVC(), DeliveryVC()]

    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation)
        view.backgroundColor = .brown
        setViewControllers([PhoneVC()], direction: .forward, animated: true)
        self.delegate = self
        self.dataSource = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if ((viewController as? DeliveryVC) != nil) {
            return CashVC()
        } else if ((viewController as? CashVC) != nil) {
            return CartVC()
        } else if ((viewController as? CartVC) != nil) {
            return PhoneVC()
        }
        return nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if ((viewController as? CashVC) != nil) {
            return DeliveryVC()
        } else if ((viewController as? PhoneVC) != nil) {
            return CartVC()
        } else if ((viewController as? CartVC) != nil) {
            return CashVC()
        }
        return nil
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return arrayVC.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
