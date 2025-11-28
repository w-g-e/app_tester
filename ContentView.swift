import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 30) {
            // Title
            Text("Welcome to My First App!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            // Counter display
            Text("\(counter)")
                .font(.system(size: 60))
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            // Button to increment counter
            Button(action: {
                counter += 1
            }) {
                Text("Tap Me!")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            // Reset button
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .font(.body)
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


