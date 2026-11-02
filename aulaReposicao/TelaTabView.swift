//
//  TelaTabView.swift
//  aulaReposicao
//
//  Created by COTEMIG on 31/10/26.
//

import SwiftUI

struct TelaTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ColorView(cor: .red, opacidade: 1.0)
                    
            }.tabItem {
                Image(systemName: "1.square.fill")
                Text("Red")
            }
            NavigationStack{
                ColorView(cor: .blue, opacidade: 1.0)
                    
            }.tabItem {
                Image(systemName: "2.square.fill")
                Text("Blue")
            }
            NavigationStack {
                ColorView(cor: .yellow, opacidade: 1.0)
                    
            }.tabItem {
                Image(systemName: "3.square.fill")
                Text("Yellow")
            }
            NavigationStack {
                ColorView(cor: .green, opacidade: 1.0)
                    
                }.tabItem {
                    Image(systemName: "4.square.fill")
                    Text("Green")
            }
        }
    }
}

struct ColorView: View {
    let cor: Color
    let opacidade: Double
    @State var showAlert: Bool = false
    var corOpaca: Color {
        cor.opacity(opacidade)
    }
    var body: some View {
        Button("Show Allert") {
            showAlert = true
        }
        corOpaca.ignoresSafeArea()
            .overlay{
                NavigationLink{
                    ColorView(cor: cor, opacidade: opacidade * 0.75)
                } label: {
                    Text("Navegar para \((opacidade * 0.75)) de opacidade")
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(.black.opacity(0.5))
                        .clipShape(Capsule())
                }
            }
            .sheet(isPresented: $showAlert){
                ColorView(cor: cor, opacidade: opacidade * 0.25)
            }
    }
}

#Preview {
    TelaTabView()
}
