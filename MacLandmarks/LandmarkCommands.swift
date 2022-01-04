//
//  LandmarkCommands.swift
//  CreatingAwatchOSApp
//
//  Created by Gospodi on 04.01.2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkCommands: Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    
    var body: some Commands {
        SidebarCommands()
        
        CommandMenu("Landmark") {
        }
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
