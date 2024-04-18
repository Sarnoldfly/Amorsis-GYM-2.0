//
//  FridayView.swift
//  Amorsis GYM 2.0
//
//  Created by Mac on 31/3/24.
//

import SwiftUI

struct FridayView: View {
    
    
        @State private var isChecked1: Bool = false
        @State private var isChecked2: Bool = false
        @State private var isChecked3: Bool = false
        @State private var isChecked4: Bool = false
        @State private var isChecked5: Bool = false

        var body: some View {
            GeometryReader { geometry in
                ZStack {

                    Image("mujercita")
                        .resizable()
                        .padding()
                        .clipped()
                        .cornerRadius(10)
                        .scaledToFit()
                        .opacity(0.3)
//                        .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            Image("liki")
                                .resizable()
//                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                                .clipped()
                                .cornerRadius(22)
                            
                            Text("VIERNES: PIERNAS & GLÚTEOS")
                                .font(.title)
                                .fontWeight(.bold)
                                .italic()
                                .underline()
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.gray)
                            
                            ExerciseView(exerciseName: "FEMORALES MÁQUINA", description: """
                                2x20 / SIN Descanso
                                Soltar musculos y seguir
                                Entrenamiento
                                (Alternando piernas Iz & D)
                                1x15 / 20" Descanso
                                Subimos peso!!
                                1x12 / 20" Descanso
                                1x10 / 20" Descanso
                                """, isChecked: $isChecked1)
                            
                            ExerciseView(exerciseName: "GLÚTEOS POLEA BAJA", description: """
                                2x20 / 30" Descanso
                                Entrenamiento >2kg
                                1x12 >=..KG/ 35" Descanso
                                1x10 >=..KG/ 35" Descanso
                                1x8 >=..KG/ 50" Descanso
                                """, isChecked: $isChecked2)
                            
                            ExerciseView(exerciseName: "GLÚTEOS POLEA BAJA", description: """
                                2x20 / sin Descanso
                                Entrenamiento >2kg
                                1x12 >=..KG/ 45" Descanso
                                1x10 >=..KG/ 45" Descanso
                                1x8 >=..KG/ 60" Descanso
                                """, isChecked: $isChecked3)
                            
                            ExerciseView(exerciseName: "GLÚTEOS ELEVACIÓN DISCO", description: """
                                2x20 / Sin Descanso
                                Entrenamiento >2kg
                                1x12 >=..KG/ 30" Descanso
                                1x10 >=..KG/ 30" Descanso
                                1x8 >=..KG/ 30" Descanso
                                """, isChecked: $isChecked4)
                            
                            ExerciseView(exerciseName: "ZANCADAS", description: "4x12 PASOS", isChecked: $isChecked5)
                        }
                        .padding()
                    }
                }
            }
        }
    }

    struct ExerciseView4: View {
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
