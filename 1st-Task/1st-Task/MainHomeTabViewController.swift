//
//  MainHomeTabViewController.swift
//  1st-Task_MovieProject
//
//  Created by 박신영 on 12/27/24.
//

import UIKit

class MainHomeTabViewController: UIViewController {
    
    @IBOutlet var newOneMark1: UILabel!
    
    @IBOutlet var newEpisodeMark1: UILabel!
    @IBOutlet var newEpisodeMark2: UILabel!
    
    @IBOutlet var nowWatchingMark1: UILabel!
    @IBOutlet var nowWatchingMark2: UILabel!
    
    @IBOutlet var top10Mark1: UIImageView!
    @IBOutlet var top10Mark2: UIImageView!
    @IBOutlet var top10Mark3: UIImageView!
    
    @IBOutlet var playBtn: UIButton!
    
    @IBOutlet var mainPosterImageVIew: UIImageView!
    
    
    @IBOutlet var firstBottomImageView: UIImageView!
    
    @IBOutlet var secondBottomImageView: UIImageView!
    @IBOutlet var thirdBottomImageVIew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        [mainPosterImageVIew, firstBottomImageView, secondBottomImageView, thirdBottomImageVIew].forEach({ i in
            i?.layer.cornerRadius = 16
            i?.layer.borderWidth = 3
        })
        
        [newOneMark1, newEpisodeMark1, newEpisodeMark2, nowWatchingMark1, nowWatchingMark2].forEach({ i in
            i?.clipsToBounds = true
            i?.layer.cornerRadius = 4
        })
        
        mainPosterImageVIew.layer.borderColor = UIColor.red.cgColor
        firstBottomImageView.layer.borderColor = UIColor.green.cgColor
        secondBottomImageView.layer.borderColor = UIColor.yellow.cgColor
        thirdBottomImageVIew.layer.borderColor = UIColor.blue.cgColor
    }

    @IBAction func playBtnAction(_ sender: UIButton) {
        let moviewPosterArr = [UIImage(resource: .범죄도시3), UIImage(resource: .밀수), UIImage(resource: .서울의봄), UIImage(resource: ._1), UIImage(resource: ._2), UIImage(resource: ._3), UIImage(resource: ._4), UIImage(resource: ._5)]
        [mainPosterImageVIew, firstBottomImageView, secondBottomImageView, thirdBottomImageVIew].forEach({ i in
            i?.image = moviewPosterArr.randomElement()
        })
        
        let flagArr = [true, false]
        
        [newOneMark1, newEpisodeMark1, newEpisodeMark2, top10Mark1, top10Mark2, top10Mark3, nowWatchingMark1, nowWatchingMark2].forEach({i in
            i?.isHidden = flagArr.randomElement() ?? true
        })
        
        
    }
}
