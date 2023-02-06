//
//  FontPostScript.swift
//  ResourceReplacer
//
//  Created by Khatereh Ghasemi on 2023-02-05.
//

import Foundation

struct FontPostScript {
    static let regular = getFontsPostScript(key: "regular")
    static let light = getFontsPostScript(key: "light")
    static let bold = getFontsPostScript(key:"bold")
}

extension FontPostScript {
    
    private static func getFontsPostScript(key: String) -> String {
        guard let fontPostScriptDict = Bundle.infoPlistValue(forKey: "FontsPostScript") as? [String: String] else {
            return ""
        }
        return fontPostScriptDict[key] ?? ""
    }
}
