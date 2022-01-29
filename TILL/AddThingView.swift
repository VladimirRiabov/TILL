//
//  AddThingView.swift
//  TILL
//
//  Created by Владимир Рябов on 29.01.2022.
//

import SwiftUI

struct AddThingView: View {
  @Environment(\.presentationMode) var presentationMode
    @ObservedObject var someThings: ThingStore
    @State private var thing = ""

  var body: some View {
    VStack {
        TextField("Thing I Learned", text: $thing)  // 1
            .disableAutocorrection(true)
         .textFieldStyle(RoundedBorderTextFieldStyle())  // 2
         .padding()  // 3
      Button("Done") {
          if !thing.isEmpty {
           someThings.things.append(thing)
         }
        presentationMode.wrappedValue.dismiss()
      }
      Spacer()
    }
    .environment(\.textCase, nil)
  }
}

struct AddThingView_Previews: PreviewProvider {
  static var previews: some View {
      AddThingView(someThings: ThingStore())
  }
    }
