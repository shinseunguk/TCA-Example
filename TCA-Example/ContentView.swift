//
//  ContentView.swift
//  TCA-Example
//
//  Created by ukseung.dev on 8/9/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<Feature>
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            HStack {
                Button(action: { viewStore.send(.minusButtonTap) }) {
                    Text("-")
                        .font(.system(size: 25))
                        .padding(30)
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                }
                
                Text("\(viewStore.count)")
                    .font(.largeTitle)
                    .padding()
                
                Button(action: { viewStore.send(.plusButtonTap) }) {
                    Text("+")
                        .font(.system(size: 25))
                        .padding(30)
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView(store: Store(initialState: Feature.State(), reducer: { Feature()._printChanges() })) // ._printChanges() 함수는 Reducer가 진행하는 모든 Action과 그에 대한 State 변화를 로그로 확인 할 수 있음.
}
