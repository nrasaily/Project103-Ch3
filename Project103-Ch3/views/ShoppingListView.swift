//
//  ShoppingListView.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 10/1/25.
//

import SwiftUI

struct ShoppingListView: View {
    @State private var shoppingList: [String] = ["Banana", "Orange", "Apple", "Pineapple"]
    @State private var newItem: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Shopping list")
                        .font(.largeTitle)
                        .foregroundStyle(Color.blue)
                        .padding()
                    
                    // list item in the shoppping list
                    List{
                        ForEach(shoppingList, id:\.self){ item in
                            Text(item)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .scrollContentBackground(.hidden)
                    
                    HStack {
                        TextField("Add new shopping item...", text: $newItem)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:20)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.2))
                            .padding()
                        
                        Button(action: {
                            addItem(newItem)
                            newItem = ""
                        }){
                            Image(systemName: "arrowshape.up.fill")
                                .padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        }
                        
                    } // End-hstack
                    .padding()
                }// End-VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(20)
                .padding()
                
            } // end-ZStack
            .navigationBarTitle("Listify", displayMode: .inline)
            
            .toolbar {
                Menu {
                    Button("Sort A -> Z"){
                        shoppingList = shoppingList.sorted(by: < )
                    }
                    Button("Reverse Order"){
                        shoppingList = shoppingList.reversed()
                    }
                }label : {
                        Image(systemName: "arrow.up.arrow.down.circle")
                            .imageScale(.large)
                    }
                
                    .padding()
                } // End - toolbar
            }// End - NavigationView
        }// End-Body
        
        
        
        private func addItem(_ item: String){
            if !item.isEmpty {
                shoppingList.append(item)
            }// End ShoppingListView
        }
    }

    #Preview {
        ShoppingListView()
    }
    


