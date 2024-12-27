//
//  DailyTask2ndViewController.swift
//  1st-Task_MovieProject
//
//  Created by 박신영 on 12/26/24.
//

import UIKit

class DailyTask2ndViewController: UIViewController {

    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var firstTextField: UITextField!
    @IBOutlet var secondTextField: UITextField!
    @IBOutlet var thirdTextField: UITextField!
    @IBOutlet var fourthTextField: UITextField!
    @IBOutlet var fifthTextField: UITextField!
    
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var moreInfoLabel: UILabel!
    @IBOutlet var switchBtn: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImageView.image = UIImage(resource: .wordmark)
        firstTextField.placeholder = "이메일 주소 또는 전화번호"
        secondTextField.placeholder = "비밀번호"
        thirdTextField.placeholder = "닉네임"
        fourthTextField.placeholder = "위치"
        fifthTextField.placeholder = "추천 코드 입력"
        
        secondTextField.isSecureTextEntry = true
        
        [firstTextField, secondTextField, thirdTextField, fourthTextField, fifthTextField].forEach({ i in
            i?.textColor = .white
            i?.backgroundColor = .lightGray
            i?.layer.cornerRadius = 12
            i?.textAlignment = .center
            i?.keyboardType = .default
            i?.borderStyle = .none
        })
        
        registerButton.setTitle("회원가입", for: .normal)
        registerButton.setTitleColor(.black, for: .normal)
        registerButton.setTitle("회원가입", for: .highlighted)
        registerButton.setTitleColor(.black, for: .highlighted)
        registerButton.backgroundColor = .white
        registerButton.layer.cornerRadius = 16
        
        moreInfoLabel.text = "추가 정보 입력"
        moreInfoLabel.textColor = .white
        moreInfoLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        switchBtn.setOn(true, animated: true)
        switchBtn.onTintColor = .brown
        switchBtn.thumbTintColor = .blue
    }
    
    @IBAction
    func firstTextFieldReturnAction(_ sender: UITextField) {
    }
    
    @IBAction
    func secondTextFieldReturnAction(_ sender: UITextField) {
    }
    
    @IBAction
    func thirdTextFieldReturnAction(_ sender: UITextField) {
    }
    
    @IBAction
    func fourthTextFieldReturnAction(_ sender: UITextField) {
    }
    
    @IBAction
    func fifthTextFieldReturnAction(_ sender: UITextField) {
    }
    
    @IBAction
    func didTapRegisterBtn(_ sender: UIButton) {
        view.endEditing(true)
    }
    
}
