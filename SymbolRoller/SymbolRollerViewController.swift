//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 유림 on 3/21/24.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    let symbols: [String] = ["sun.min", "sun.dust", "moon", "cloud.rain", "cloud.fog", "cloud.bolt.rain"]
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func reload() {
        let symbol: String = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    @IBAction func ButtonTapped(_ sender: UIButton) {
        reload()
    }
    
}
