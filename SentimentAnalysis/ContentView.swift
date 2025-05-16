//
//  ContentView.swift
//  SentimentAnalysis
//
//  Created by EKbana on 16/05/2025.
//

import SwiftUI
import CoreML


enum labelTypes:String {
    case positive,negative,neutral
}

struct ContentView: View {
    @State private var text = ""
    @State private var result = ""
    
    let model = try! SentimentAnalysisNewsModel(configuration: MLModelConfiguration())
    
    private var color:Color {
        if let label = labelTypes(rawValue: result) {
            switch label {
            case .positive:
                return .green
            case .negative:
                return .red
            case .neutral:
                return .blue
            }
        }
        return Color(UIColor.systemBackground)
    }
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Type here...", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .onSubmit {
                        do {
                            let prediction = try model.prediction(text: text)
                            result = prediction.label
                        }catch {
                            print("failed to predict \(error.localizedDescription)")
                        }
                    }
                if !result.isEmpty {
                    Text(result)
                        .foregroundStyle(color)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Financial News")
        }
        
      
    }
}

#Preview {
    ContentView()
}
