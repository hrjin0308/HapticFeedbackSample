//
//  FeedbackUtil.swift
//  HapticFeedbackSample
//
//  Created by JinHyeRim on 2021/04/07.
//

import UIKit

//
// MARK: - Impact
class FeedbackUtil {
    
    class func feedbackImpactLight() {
        feedbackImpact(style: .light)
    }
    
    class func feedbackImpactMedium() {
        feedbackImpact(style: .medium)
    }
    
    class func feedbackImpactHeavy() {
        feedbackImpact(style: .heavy)
    }
    
    @available(iOS 13.0, *)
    class func feedbackImpactSoft() {
        feedbackImpact(style: .soft)
    }
    
    @available(iOS 13.0, *)
    class func feedbackImpactRigid() {
        feedbackImpact(style: .rigid)
    }
    
    private class func feedbackImpact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

//
// MARK: - Selection
extension FeedbackUtil {
    
    class func feedbackSelection() {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
}

//
// MARK: - Notification
extension FeedbackUtil {
    
    class func feedbackNotiSuccess() {
        feedbackNoti(type: .success)
    }
    
    class func feedbackNotiWarning() {
        feedbackNoti(type: .warning)
    }
    
    class func feedbackNotiError() {
        feedbackNoti(type: .error)
    }
    
    private class func feedbackNoti(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
}
