//
//  EditScreenView.swift
//  HW23
//
//  Created by Anton on 28.11.2022.
//

import SwiftUI

struct EditScreenView: View {
    @State private var editMode: EditMode = .active
    @State private var models = EditScreenModel.tableModels
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        List($models,
             editActions: [.move],
             selection: $multiSelection) { model in
            EditScreenTableCell(model: model.wrappedValue)
        }
             .environment(\.editMode, $editMode)
             .listStyle(.inset)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditScreenView()
    }
}
