//
//  ViewController.swift
//  firstGit
//
//  Created by Roman on 04.09.2023.
//

import UIKit

class MainViewController: UIViewController {

    var originalColor: UIColor = .systemBackground
    var isColorChanged = false

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let button = UIButton(type: .system)
        button.setTitle("Change color", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)

        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }

    @objc func buttonTapped() {
        if isColorChanged {
            view.backgroundColor = originalColor
        } else {
            view.backgroundColor = randomColor()
        }
        isColorChanged.toggle()
    }

    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

