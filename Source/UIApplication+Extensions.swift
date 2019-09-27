//
//  UIApplication+Exntensions.swift
//  CLExtensions
//
//  Created by CainLuo on 2019/9/14.
//  Copyright © 2019年 CainLuo. All rights reserved.
//

import UIKit

extension UIApplication {
    
    public class func openSetting() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(settingsUrl, completionHandler: nil)
            } else {
                UIApplication.shared.openURL(settingsUrl)
            }
        }
    }
}

// MARK: - Propertys
extension UIApplication {
    
    public static var shortVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }
    
    public static var fullVersion: String {
        return shortVersion + "." + (Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String)
    }
    
    public static var documentURL: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    public static var displayName: String {
        let bundle = Bundle.main
        return (bundle.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ??
            bundle.object(forInfoDictionaryKey: "CFBundleName") as? String) ?? ""
    }
}
