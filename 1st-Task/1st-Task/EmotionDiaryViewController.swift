//
//  EmotionDiaryViewController.swift
//  1st-Task_MovieProject
//
//  Created by 박신영 on 12/26/24.
//

import UIKit

class EmotionDiaryViewController: UIViewController {

    @IBOutlet var navLeftItem: UIBarButtonItem!
    
    @IBOutlet var happyBtn: UIButton!
    @IBOutlet var happyBtnLabel: UILabel!
    var happyBtnCnt = 0
    
    @IBOutlet var loveBtn: UIButton!
    @IBOutlet var loveBtnLabel: UILabel!
    var loveBtnCnt = 0
    
    @IBOutlet var likeBtn: UIButton!
    @IBOutlet var likeBtnLabel: UILabel!
    var likeBtnCnt = 0
    
    @IBOutlet var panicBtn: UIButton!
    @IBOutlet var panicBtnLabel: UILabel!
    var panicBtnCnt = 0
    
    @IBOutlet var upsetBtn: UIButton!
    @IBOutlet var upsetBtnLabel: UILabel!
    var upsetBtnCnt = 0
    
    @IBOutlet var depresseBtn: UIButton!
    @IBOutlet var depresseBtnLabel: UILabel!
    var depresseBtnCnt = 0
    
    @IBOutlet var boredBtn: UIButton!
    @IBOutlet var boredBtnLabel: UILabel!
    var boredBtnCnt = 0
    
    @IBOutlet var languidBtn: UIButton!
    @IBOutlet var languidBtnLabel: UILabel!
    var languidBtnCnt = 0
    
    @IBOutlet var sadBtn: UIButton!
    @IBOutlet var sadBtnLabel: UILabel!
    var sadBtnCnt = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        navLeftItem.image = UIImage(systemName: "list.triangle")
        navLeftItem.tintColor = .lightGray
        
        // 버튼 이미지 설정
        happyBtn.setImage(UIImage(resource: .monoSlime1), for: .normal)
        happyBtnLabel.text = "행복해 \(happyBtnCnt)"
        happyBtnLabel.textAlignment = .center
        
        
        loveBtn.setImage(UIImage(resource: .monoSlime2), for: .normal)
        loveBtnLabel.text = "사랑해 \(loveBtnCnt)"
        loveBtnLabel.textAlignment = .center
        
        
        likeBtn.setImage(UIImage(resource: .monoSlime3), for: .normal)
        likeBtnLabel.text = "좋아해 \(likeBtnCnt)"
        likeBtnLabel.textAlignment = .center
        
        
        panicBtn.setImage(UIImage(resource: .monoSlime4), for: .normal)
        panicBtnLabel.text = "당황해 \(panicBtnCnt)"
        panicBtnLabel.textAlignment = .center
        
        
        upsetBtn.setImage(UIImage(resource: .monoSlime5), for: .normal)
        upsetBtnLabel.text = "속상해 \(upsetBtnCnt)"
        upsetBtnLabel.textAlignment = .center
        
        
        depresseBtn.setImage(UIImage(resource: .monoSlime6), for: .normal)
        depresseBtnLabel.text = "우울해 \(depresseBtnCnt)"
        depresseBtnLabel.textAlignment = .center
        
        
        boredBtn.setImage(UIImage(resource: .monoSlime7), for: .normal)
        boredBtnLabel.text = "심심해 \(boredBtnCnt)"
        boredBtnLabel.textAlignment = .center
        
        
        languidBtn.setImage(UIImage(resource: .monoSlime8), for: .normal)
        languidBtnLabel.text = "나른해 \(languidBtnCnt)"
        languidBtnLabel.textAlignment = .center
        
        
        sadBtn.setImage(UIImage(resource: .monoSlime9), for: .normal)
        sadBtnLabel.text = "슬퍼 \(sadBtnCnt)"
        sadBtnLabel.textAlignment = .center
    }
    
    @IBAction func happyBtnAction(_ sender: UIButton) {
        happyBtnCnt += 1
        happyBtnLabel.text = "행복해 \(happyBtnCnt)"
    }
    
    @IBAction func loveBtnAction(_ sender: UIButton) {
        loveBtnCnt += 1
        loveBtnLabel.text = "사랑해 \(loveBtnCnt)"
    }
    
    @IBAction func likeBtnAction(_ sender: UIButton) {
        likeBtnCnt += 1
        likeBtnLabel.text = "좋아해 \(likeBtnCnt)"
    }
    
    @IBAction func panicBtnAction(_ sender: UIButton) {
        panicBtnCnt += 1
        panicBtnLabel.text = "당황해 \(panicBtnCnt)"
    }
    
    @IBAction func upsetBtnAction(_ sender: UIButton) {
        upsetBtnCnt += 1
        upsetBtnLabel.text = "속상해 \(upsetBtnCnt)"
    }
    
    @IBAction func depresseBtnAction(_ sender: UIButton) {
        depresseBtnCnt += 1
        depresseBtnLabel.text = "우울해 \(depresseBtnCnt)"
    }
    
    @IBAction func boredBtnAction(_ sender: UIButton) {
        boredBtnCnt += 1
        boredBtnLabel.text = "심심해 \(boredBtnCnt)"
    }
    
    @IBAction func languidBtnAction(_ sender: UIButton) {
        languidBtnCnt += 1
        languidBtnLabel.text = "나른해 \(languidBtnCnt)"
    }
    
    @IBAction func sadBtnAction(_ sender: UIButton) {
        sadBtnCnt += 1
        sadBtnLabel.text = "슬퍼 \(sadBtnCnt)"
    }
    
}
