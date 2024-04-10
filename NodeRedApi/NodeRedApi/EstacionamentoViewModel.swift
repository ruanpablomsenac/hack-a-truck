//
//  EstacionamentoViewModel.swift
//  NodeRedApi
//
//  Created by Turma01-24 on 10/04/24.
//

import Foundation

class EstacionamentoViewModel: ObservableObject {
    @Published var estacionamentos : [Estacionamento]? = nil
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/estacionamentos")
        else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                print(parsed)
                DispatchQueue.main.async{
                    self?.estacionamentos = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
