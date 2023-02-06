//
//  ContentView.swift
//  ResourceReplacer
//
//  Created by Khatereh Ghasemi on 2023-02-05.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image(uiImage: UIImage(named: "background.jpg")!)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                Text("Font Bold PostScript -> \(FontPostScript.bold)")
                    .font(Font.custom(FontPostScript.bold, size: 18))
                
                Text("Font Light PostScript -> \(FontPostScript.light)")
                    .font(Font.custom(FontPostScript.light, size: 18))
                
                Text("Font Regular PostScript -> \(FontPostScript.regular)")
                    .font(Font.custom(FontPostScript.regular, size: 18))
            }
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
