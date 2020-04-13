//
//  ViewController2.swift
//  InputAccessoryView
//
//  Created by scandinappia@gmail.com on 2020-04-13.
//  Copyright © 2020 scandinappia. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBAction func didTapButton(_ sender: Any) {
        guard let url = URL(string: "https://github.com/scandinappia/InputAccessoryView") else { return }
        UIApplication.shared.open(url)
    }
}
