//
//  PlistHelper.swift
//  VirtualExam
//
//  Created by Zaid Pathan on 27/03/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import Foundation

class PlistHelper {
    static let shared = PlistHelper()
    
    func getString(forKey key: String) -> String? {
        return Bundle.main.object(forInfoDictionaryKey: key) as? String
    }
}
