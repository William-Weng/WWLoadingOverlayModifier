//
//  LoadingOverlayModifier.swift
//  Wordie
//
//  Created by William.Weng on 2026/6/22.
//

import SwiftUI

private struct WWLoadingOverlayModifier: ViewModifier {
    
    let isPresented: Bool
    let title: String
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        
        ZStack {
            
            content

            if isPresented {
                
                backgroundColor
                    .ignoresSafeArea()
                
                ProgressView(title)
                    .padding(24)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
            }
        }
    }
}

public extension View {
    
    func loadingOverlay(isPresented: Bool, title: String = "Loading...", backgroundColor: Color = .black.opacity(0.25)) -> some View {
        modifier(WWLoadingOverlayModifier(isPresented: isPresented, title: title, backgroundColor: backgroundColor))
    }
}
