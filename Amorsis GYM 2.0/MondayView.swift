//
//  MondayView.swift
//  Amorsis GYM 2.0
//
//  Created by Mac on 31/3/24.
//
import SwiftUI


struct MondayView: View {
    @State private var isChecked1: Bool = false
    @State private var isChecked2: Bool = false
    @State private var isChecked3: Bool = false
    @State private var isChecked4: Bool = false
    @State private var isChecked5: Bool = false

    var body: some View {
//        GeometryReader { geometry in
            ZStack {
                Image("piedra")
                    .resizable()
//                    .ignoresSafeArea()
                    .scaledToFit()
                    .opacity(0.2)
                    .clipShape(Capsule())

                
                ScrollView {
                    VStack(spacing: 20) {
                        
                        Text("LUNES: ESPALDA & TRÍCEPS")
                            .font(.title)
                            .fontWeight(.bold)
                            .italic()
                            .underline()
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.black)
                        
                        ExerciseView(exerciseName: "JALÓN AL PECHO", description: """
                            2x20 / 30" Descanso
                            Entrenamiento
                            1x15 / 20" Descanso
                            Subimos peso!!
                            1x12 / 30" Descanso
                            1x10 / 60" Descanso
                            """, isChecked: $isChecked1)
                        
                        ExerciseView(exerciseName: "REMO POLEA BAJA", description: """
                            2x20 / 30" Descanso
                            Entrenamiento >2kg
                            1x12 >=..KG/ 35" Descanso
                            1x10 >=..KG/ 35" Descanso
                            1x8 >=..KG/ 50" Descanso
                            """, isChecked: $isChecked2)
                        
                        ExerciseView(exerciseName: "POLEA TRÍCEPS", description: """
                            2x20 / sin Descanso
                            Entrenamiento >2kg
                            1x12 >=..KG/ 45" Descanso
                            1x10 >=..KG/ 45" Descanso
                            1x8 >=..KG/ 60" Descanso
                            """, isChecked: $isChecked3)
                        
                        ExerciseView(exerciseName: "GOMAS TRICEPS", description: """
                            2x20 / 20"
                            Entrenamiento
                            1x12 >=..KG/ 30" Descanso
                            1x12 >=..KG/ 30" Descanso
                            1x12 >=..KG/ 30" Descanso
                            """, isChecked: $isChecked4)
                        
                        ExerciseView(exerciseName: "ABDOMEN EN POLEA", description: "4x12", isChecked: $isChecked5)
                    }
                    .padding()
                }
            }
            .edgesIgnoringSafeArea(.all)

//        }
    }
}

struct ExerciseView: View {
    let exerciseName: String
    let description: String
    @Binding var isChecked: Bool

    var body: some View {
        VStack(spacing: 5) {
            Text(exerciseName)
                .bold()
                .underline()
                .foregroundColor(isChecked ? .green : .gray)
            
            Text(description)
                .foregroundColor(isChecked ? .green : .gray)
            
            Button(action: {
                self.isChecked.toggle()
            }) {
                Text("CHECK")
                    .bold()
            }
        }
    }
}
