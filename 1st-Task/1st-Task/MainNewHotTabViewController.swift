//
//  MainNewHotTabViewController.swift
//  1st-Task_MovieProject
//
//  Created by 박신영 on 12/27/24.
//

import UIKit

class MainNewHotTabViewController: UIViewController {
    
    @IBOutlet var titleCommentLabel: UILabel!
    @IBOutlet var subtitleCommentLabel: UILabel!
    
    @IBOutlet var firstBtn: UIButton!
    @IBOutlet var secondBtn: UIButton!
    @IBOutlet var thirdBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topBtnAction(firstBtn)
        setUI()
    }
    
    func setUI() {
        [firstBtn, secondBtn, thirdBtn].forEach({ i in
            i?.layer.cornerRadius = 8
        })
    }

    @IBAction func topBtnAction(_ sender: UIButton) {
        let btnArr = [firstBtn, secondBtn, thirdBtn]
        
        for i in btnArr {
            if i == sender {
                i?.backgroundColor = .white
                i?.setTitleColor(.black, for: .normal)
            } else {
                i?.backgroundColor = .black
                i?.setTitleColor(.white, for: .normal)
            }
        }
        
        let titleCommentsArr = ["이런! 찾으시는 작품이 없습니다.", "이런런! 배가 고픕니다!", "허걱! 지각입니다!"]
        let subtitleCommentsDic: [String: String] = [
            "이런! 찾으시는 작품이 없습니다.": "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요.",
            "이런런! 배가 고픕니다!": "한식, 양식, 중식, 일식 등 메뉴를 검색해 보세요.",
            "허걱! 지각입니다!": "버스, 택시, 지하철 등 이동할 대중교통을 검색해 보세요."
        ]
        
        titleCommentLabel.text = titleCommentsArr.randomElement()
        subtitleCommentLabel.text = subtitleCommentsDic[titleCommentLabel.text ?? ""]
    }
}
