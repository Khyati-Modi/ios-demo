//
//  Env.swift
//
//  Created by Zaid Pathan on 15/01/19.
//  Copyright © 2019 SA. All rights reserved.
//

import Foundation

enum Environment {
    case development
    case staging
    case production
}

class Env {
    static let shared = Env()
    lazy var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: SAiOS.configuration.rawValue) as? String {
            if configuration.range(of: "Development") != nil {
                return Environment.development
            } else if configuration.range(of: "Staging") != nil {
                return Environment.staging
            }
        }
        return Environment.production
    }()
}
