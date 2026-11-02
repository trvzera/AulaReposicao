//
//  ContentView.swift
//  aulaReposicao
//
//  Created by COTEMIG on 31/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink {
                    Text("Tela de Perfil")
                        .navigationTitle(Text("Perfil"))
                    
                } label: {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                        Text(" Ir para o perfil")
                            .foregroundColor(.white)
                        
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(16)
                
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "gear")
                            .font(.title)
                            .foregroundColor(.white)
                        Text(" Ir para configurações")
                            .foregroundColor(.white)
                        
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(16)
                NavigationLink {
                    ContatosView()
                        .navigationTitle(Text("Contatos"))
                } label: {
                    HStack {
                        Image(systemName: "person.2.fill")
                            .font(.title)
                            .foregroundColor(.white)
                        Text(" Ir para contatos")
                            .foregroundColor(.white)
                        
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(16)
            }
        }
    }
}

#Preview {
    ContentView()
}
