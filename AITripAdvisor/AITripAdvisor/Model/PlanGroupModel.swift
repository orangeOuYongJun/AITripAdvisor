//
//  PlanGroupModel.swift
//  AITripAdvisor
//
//  Created by Yongjun Ou on 5/23/23.
//

import Foundation

struct Group: Identifiable {
    let id = UUID()
    let name: String
    let items: [Item]
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}
