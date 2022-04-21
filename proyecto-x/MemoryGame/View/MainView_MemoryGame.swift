//
//  MainView.swift
//  proyecto-x
//
//  Created by Rodolfo.Iribarren on 04/01/2022.
//

import SwiftUI

struct MemoryMainView: View {
    @EnvironmentObject var state : MemoryGameState
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        GeometryReader { screenGeometry in
            ZStack {
                VStack{
                    Text("Jugando: \(state.gameModeSelected.rawValue)")
                    Text("Score Actual: \(state.totalScore)")
                    Text("High Score: \(state.highScore)")

                    Spacer()

                    MemoryGameHelperText()
                    LivesIndicator_MemoryGame(remainingLives: state.remainingLives)
                    
                    Spacer()
                    if(!state.loading){
                        Spacer()
                        CorrectSequenceIndicator()
                        Spacer()
                        VStack {
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
                if(state.gameStatus == .victory || state.gameStatus == .defeated){
                    MemoryGameResultModal(screenGeometry: screenGeometry)
                        .zIndex(1)
                        .transition(.move(edge: .bottom))
                }
            }
            .onAppear(perform: {
                state.generateGame(cardsAmount: state.cardsAmountSelected)
                state.startGame()
                state.loading.toggle()
            })
            .onDisappear(perform: {
                state.onGoBack()
            })
            .onChange(of: scenePhase) { newPhase in
                if newPhase == .background {
                    state.evalutateHighScore()
                }
            }

        }
    }
}