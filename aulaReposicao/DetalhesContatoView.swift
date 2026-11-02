//
//  DetalhesContatoView.swift
//  aulaReposicao
//
//  Created by COTEMIG on 31/10/26.
//

import SwiftUI

struct DetalhesContatoView: View {
    let contato: Contato
    var body: some View {
        VStack(spacing: 15) {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue.opacity(0.6))
                .overlay{
                    Text(contato.nome.prefix(1).uppercased())
                        .font(.system(size: 70))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white.opacity(0.7))
                }
            Text(contato.nome)
                .font(.title.bold())
            
            VStack (alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: "phone.fill")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                    Text("Telefone:")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                }
                Text(contato.telefone)
                    .font(.headline)
                    .foregroundColor(.gray.opacity(0.5))
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            VStack (alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: "envelope.fill")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                    Text("Email:")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                }
                Text(contato.email)
                    .font(.headline)
                    .foregroundColor(.gray.opacity(0.5))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack (alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: "party.popper.fill")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                    Text("Aniversário:")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                }
                Text(contato.aniversario)
                    .font(.headline)
                    .foregroundColor(.gray.opacity(0.5))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack (alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: "location.fill")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                    Text("Endereço:")
                        .font(.headline)
                        .foregroundColor(.gray.opacity(1))
                }
                    Text(contato.endereço)
                        .font(.headline)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    Text(String(contato.cep))
                        .font(.headline)
                        .foregroundColor(.gray.opacity(0.5))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(60)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DetalhesContatoView(contato: Contato(nome: "Giovanni", telefone: "31 9 9999-9999", email: "giovanni.cm.trivellato@gmail.com", aniversario: "30/08/2008", endereço: "Rua 2", cep: 31311310))
}
