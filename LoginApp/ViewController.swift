//
//  ViewController.swift
//  LoginApp
//
//  Created by 김서연 on 2023/08/02.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        setup()
    }
    
    func setup(){
        textLabel.text = "이메일을 입력해주세요"
        view.backgroundColor = UIColor.lightGray //뷰컨트롤러 전체의 배경색상을 밝은 회색으로 변경
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "email"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .unlessEditing
        textField.returnKeyType = .done
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        if textField.text == ""{
            textField.placeholder = "Type your email"
            return false
        }else{
            setTextLabelText()
            return true
        }
    }

    func setTextLabelText(){
        textLabel.text = textField.text
        textField.resignFirstResponder()
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        setTextLabelText()
    }
    
}

