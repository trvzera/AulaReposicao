//
//  ContatosView.swift
//  aulaReposicao
//
//  Created by COTEMIG on 31/10/26.
//

import SwiftUI

struct ContatosView: View {
    @State var contatos: [Contato] = [
        Contato(nome: "Giovanni", telefone: "31 9 9999-9999", email: "giovanni.cm.trivellato@gmail.com", aniversario: "30/08/2008", endereço: "Rua 2", cep: 31311310),
        Contato(nome: "Peter", telefone: "11 9 1111-1111", email: "peter@peter.com", aniversario: "11/09/2001", endereço: "Rua 1", cep: 11111111),
        Contato(nome: "Manuela", telefone: "44 9 4444-4444", email: "manu@email.com", aniversario: "10/11/2010", endereço: "Rua Seilaporra", cep: 13131131),
        Contato(nome: "Roger Guedes", telefone: "13 9 1313-1313", email: "voltavida@gmail.com", aniversario: "04/10/1980", endereço: "Qatar", cep: 131231)
        
    ]
    var body: some View {
        NavigationStack{
            List(contatos) { contato in
                NavigationLink {
                    DetalhesContatoView(contato: contato)
                        .navigationTitle("Detalhes")
                } label: {
                    HStack {
                        
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.blue.opacity(0.2))
                            .overlay {
                                Text(contato.nome.prefix(1).uppercased())
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white.opacity(1))
                            }
                        VStack(alignment: .leading, spacing: 4) {
                            Text(contato.nome)
                                .font(.headline)
                            Text(contato.telefone)
                                .font(.subheadline)
                                .foregroundStyle(.gray.opacity(0.7))
                        }
                        Spacer()
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContatosView()
}
