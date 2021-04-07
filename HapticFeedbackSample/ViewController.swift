//
//  ViewController.swift
//  HapticFeedbackSample
//
//  Created by JinHyeRim on 2021/04/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func touchUpInsideButton(_ sender: UIButton) {
        switch sender.tag {
        case 0:     FeedbackUtil.feedbackImpactLight()
        case 1:     FeedbackUtil.feedbackImpactMedium()
        case 2:     FeedbackUtil.feedbackImpactHeavy()
        case 3:     FeedbackUtil.feedbackImpactSoft()
        case 4:     FeedbackUtil.feedbackImpactRigid()
        case 5:     FeedbackUtil.feedbackSelection()
        case 6:     FeedbackUtil.feedbackNotiSuccess()
        case 7:     FeedbackUtil.feedbackNotiWarning()
        case 8:     FeedbackUtil.feedbackNotiError()
        default:    break
        }
    }
}

