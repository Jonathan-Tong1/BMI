//
//  ContentView.swift
//  BMI
//
//  Created by Jonathan on 2023-12-26.
//

import SwiftUI

struct ContentView: View {
    @State private var height = 0.0
    @State private var weight = 0.0
    
    var bmicalculation: Double {
        let bmi = Double((weight) / (height * height))
        return bmi
    }
    
    var body: some View {
        NavigationStack{
            Form {
                Section("How tall are you? (m^2)"){
                    TextField("Height",value: $height, format: .number)
                }
                Section("How much do you weight? (kg)"){
                    TextField("Weight",value: $weight, format: .number)
                }
            }
            
            Section(){
                TextField(bmicalculation,format:.number)
            }
            .navigationTitle("BMI Calculator")
        }
    }
}

#Preview {
    ContentView()
}
