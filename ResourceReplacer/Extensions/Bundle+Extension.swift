//
//  Bundle+Extension.swift
//  ResourceReplacer
//
//  Created by Khatereh Ghasemi on 2023-02-05.
//

import Foundation

extension Bundle {
    
    static func infoPlistValue(forKey key: String) -> Any? {
        guard let value = Bundle.main.object(forInfoDictionaryKey: key) else {
           return nil
        }
        return value
    }
}
