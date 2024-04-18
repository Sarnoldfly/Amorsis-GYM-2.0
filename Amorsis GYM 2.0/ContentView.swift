//
//  ContentView.swift
//  Amorsis GYM 2.0
//
//  Created by Mac on 27/3/24.
//

import SwiftUI
import SwiftData

struct FitnessApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

struct MainView: View {
        
    var body: some View {
        
        

        NavigationView {
            VStack{
                Image("sara1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                
                List {
                    NavigationLink(destination: MondayView()) {
                        Text("LUNES: ESPALDA & TRÍCEPS")
                    }
                    NavigationLink(destination: TuesdayView()) {
                        Text("MARTES: FEMORALES & GLÚTEOS")
                    }
                    NavigationLink(destination: WednesdayView()) {
                        Text("MIÉRCOLES: PECTORAL & BÍCEPS")
                    }
                    NavigationLink(destination: ThursdayView()) {
                        Text("JUEVES: AERÓBICO & FLEXIBILIDAD")
                    }
                    NavigationLink(destination: FridayView()) {
                        Text("VIERNES: PIERNAS & GLÚTEOS")
                    }
                    NavigationLink(destination: SaturdayView()) {
                        Text("SÁBADO: ¿?")
                    }
                    NavigationLink(destination: SundayView()) {
                        Text("DOMINGO: ¿?")
                    }
                }
            }
            .navigationTitle("Fitness")

        }
    }
}






struct SaturdayView: View {
    var body: some View {
        Image("CHICA")
            .resizable()
            .scaledToFit()
            .frame(height: 150) // Ajusta la altura de la imagen según tu preferencia
            .offset(y: -75) // Desplaza la imagen hacia arriba para que esté en la parte superior
            .padding(.horizontal) // Añade un relleno horizontal para que la imagen no toque los bordes laterales
            .zIndex(1) // Coloca la imagen encima de la lista
            .background(Color.white)
        
    }
}












struct SundayView: View {
    @State private var showDetail = false

    var body: some View {
        NavigationView {
            ZStack {
                RadialGradient(gradient: Gradient(colors: [Color.white, Color.gray, Color.blue]), center: .center, startRadius: 5, endRadius: 500)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Button(action: {
                        showDetail.toggle()
                    }) {
                        Text("GENERAR LA RUTINA DE HOY")
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                if showDetail {
                    Image("GluteoGoma")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .padding(.horizontal)
                        .zIndex(1)
                        .background(Color.white)
                }
            }
            .navigationTitle("Sunday Workout")
        }
    }
}

