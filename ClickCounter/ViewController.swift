//
//  ViewController.swift
//  ClickCounter
//
//  Created by UmairAhmed Khan on 27/03/2020.
//  Copyright © 2020 noorifytech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    @IBOutlet private var counterLabel: UILabel!
    private var incrementButton: UIButton!
    private var decrementButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        setupViewProgramatically()
    }
    
    private func setupViewProgramatically() {
        setupCounterLabel()
        setupIncrementButton()
        setupDecrementButton()
    }
    
    private func setupCounterLabel() {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "\(self.count)"
        self.counterLabel = label
        
        view.addSubview(counterLabel)
    }
    
    private func setupIncrementButton() {
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 100, height: 100)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(incrementCount), for: .touchUpInside)
        
        self.incrementButton = button
        view.addSubview(self.incrementButton)
    }
    
    private func setupDecrementButton() {
        let button = UIButton()
        button.frame = CGRect(x: 250, y: 250, width: 100, height: 100)
        button.setTitle("Decrement", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(decrementCount), for: .touchUpInside)
        
        self.decrementButton = button
        view.addSubview(self.decrementButton)
    }

    @objc
    @IBAction private func incrementCount() {
        self.count += 1
        self.counterLabel.text = "\(self.count)"
    }
    
    @objc
    @IBAction private func decrementCount() {
        self.count -= 1
        self.counterLabel.text = "\(self.count)"
    }
}

