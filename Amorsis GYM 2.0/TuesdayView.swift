//
//  TuesdayView.swift
//  Amorsis GYM 2.0
//
//  Created by Mac on 31/3/24.
//

import SwiftUI


struct TuesdayView: View {
    
    

        @State private var isChecked1: Bool = false
        @State private var isChecked2: Bool = false
        @State private var isChecked3: Bool = false
        @State private var isChecked4: Bool = false
        @State private var isChecked5: Bool = false
    @State private var isChecked6: Bool = false
    @State private var isChecked7: Bool = false


        var body: some View {
            GeometryReader { geometry in
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.green, .black, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            Image("CHICA")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width, height: geometry.size.height * 0.4)
                                .clipped()
                            
                            Text("MARTES: FEMORALES & GLÚTEOS")
                                .font(.title)
                                .fontWeight(.bold)
                                .italic()
                                .underline()
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.gray)
                            
                            ExerciseView(exerciseName: "FEMORAL", description: """
                                2x20 / sin Descanso
                                Entrenamiento
                                1x15 / 0/20s Descanso
                                Subimos peso!!
                                1x12 / 0/20s Descanso
                                1x10 / 0/20 Descanso
                                """, isChecked: $isChecked1)
                            
                            ExerciseView(exerciseName: "PESO MUERTO", description: """
                                2x20 / 30s Descanso
                                1x12 >=..KG/ 30s Descanso
                                1x10 >=..KG/ 40s Descanso
                                1x8 >=..KG/ 40s Descanso
                                """, isChecked: $isChecked2)
                            
                            ExerciseView(exerciseName: "POLEA BAJA GLÚTEO", description: """
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
                            
                            ExerciseView(exerciseName: "PUENTE CON BANDA ELÁSTICA", description: "2x25", isChecked: $isChecked5)
                            ExerciseView(exerciseName: "Estáticas a 30 segundos", description: "2x10", isChecked: $isChecked6)
                            ExerciseView(exerciseName: "SENTADILLAS", description: "2x40", isChecked: $isChecked7)


                        }
                        .padding()
                    }
                }
            }
        }
    }

    struct ExerciseView1: View {
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
