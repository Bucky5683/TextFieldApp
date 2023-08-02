//
//  ViewController.swift
//  LoginApp
//
//  Created by 김서연 on 2023/08/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        textLabel.text = "텍스트를 입력해주세요."
        view.backgroundColor = UIColor.gray //뷰컨트롤러 전체의 배경색상을 회색으로 변경
    }

    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
    
}

