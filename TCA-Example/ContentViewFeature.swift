//
//  ContentViewFeature.swift
//  TCA-Example
//
//  Created by ukseung.dev on 8/9/24.
//

import ComposableArchitecture

import Combine
import CombineSchedulers

@Reducer
struct Feature {
    struct State: Equatable {
        var count = 0
    }
    
    enum Action: Equatable {
        case plusButtonTap
        case minusButtonTap
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .plusButtonTap:
            // 더하기 작업 구현
            state.count += 1
            return .none
        case .minusButtonTap:
            // 빼기 작업 구현
            state.count -= 1
            return .none
        }
    }
}

