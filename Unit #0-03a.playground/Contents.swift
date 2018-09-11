// Created on: Jan-2017
// Created by: Mr. Coxall
// Created for: ICS3U
// This program is the UIKit solution for the Hello, World! program wth buttom

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel = UILabel()
    let helloWorldButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //helloWorldLabel.text = "Hello, World!"
        helloWorldLabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        helloWorldLabel.textAlignment = NSTextAlignment.center
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        
        helloWorldButton.setTitle("Click Me", for: UIControlState.normal)
        helloWorldButton.setTitleColor(.blue, for: .normal)
        helloWorldButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(helloWorldButton)
        helloWorldButton.translatesAutoresizingMaskIntoConstraints = false
        helloWorldButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloWorldButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
    }
    
    @objc func showText() {
        // show Hello, World!
        helloWorldLabel.text = "Hello, World!"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
