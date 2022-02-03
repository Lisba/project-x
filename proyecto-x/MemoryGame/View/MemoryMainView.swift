//
//  MainView.swift
//  proyecto-x
//
//  Created by Rodolfo.Iribarren on 04/01/2022.
//

import SwiftUI

struct anotherView : View {
    @ObservedObject var stateSecondary : BoardMemoryGame
    @EnvironmentObject var state : MemoryGameState

    var body: some View {
        if(stateSecondary.flipLoading){
            Text("Observa los animales durante \(state.visualizationTimeSelected) segundos")
        }
    }
}

struct MemoryMainView: View {
    @EnvironmentObject var state : MemoryGameState
    
    var body: some View {
        GeometryReader { screenGeometry in
            VStack{
                Text("Jugando: \(state.gameModeSelected.rawValue)")
                
                anotherView(stateSecondary: state.board)
                
                Spacer()
                if(!state.loading){
                    Spacer()
                    CorrectSequenceIndicator()
                    Spacer()
                    VStack {
                        Text("Elementos:")
                        Text("(TODO: hay que convertir esto en un tablero con cards dadas vuelta)")
                        ZStack{
                            LazyVGrid(columns: state.columns, spacing: 5) {
                                ForEach(0..<state.cardsAmountSelected) { index in
                                    MemoryGameCell(index: index, screenGeometry: screenGeometry)
                                }
                            }
                            .customCellContainerStyle(width: screenGeometry.size.width)
                        }
                    }
                    Spacer()
                }
            }
            .onAppear(perform: {
                state.board.generateGame(cardsAmount: state.cardsAmountSelected, visualizationTime: state.visualizationTimeSelected)
                state.loading.toggle()
            })
            .onDisappear(perform: {
                state.reset()
        })
        }
    }
}