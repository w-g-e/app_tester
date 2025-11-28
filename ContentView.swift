import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    // Computed property for counter color based on value
    var counterColor: Color {
        if counter > 0 {
            return .green
        } else if counter < 0 {
            return .red
        } else {
            return .blue
        }
    }
    
    // Computed property for fun emoji based on counter value
    var emojiReaction: String {
        switch counter {
        case ..<0:
            return "😢"
        case 0:
            return "😐"
        case 1..<10:
            return "😊"
        case 10..<50:
            return "😄"
        case 50..<100:
            return "🤩"
        default:
            return "🔥"
        }
    }
    
    var body: some View {
        VStack(spacing: 25) {
            // Title
            Text("Counting is neat")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            // Emoji reaction
            Text(emojiReaction)
                .font(.system(size: 50))
                .padding(.bottom, 10)
            
            // Counter display with dynamic color
            Text("\(counter)")
                .font(.system(size: 70))
                .fontWeight(.bold)
                .foregroundColor(counterColor)
                .padding()
                .animation(.spring(response: 0.3), value: counter)
            
            // Button row - Increment and Decrement
            HStack(spacing: 20) {
                // Decrement button
                Button(action: {
                    counter -= 1
                }) {
                    Text("−")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 70, height: 70)
                        .background(Color.red)
                        .cornerRadius(35)
                }
                
                // Increment button
                Button(action: {
                    counter += 1
                }) {
                    Text("+")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 70, height: 70)
                        .background(Color.green)
                        .cornerRadius(35)
                }
            }
            .padding(.vertical, 10)
            
            // Special action buttons row
            HStack(spacing: 15) {
                // Double button
                Button(action: {
                    counter *= 2
                }) {
                    Text("×2")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                // Random button
                Button(action: {
                    counter = Int.random(in: -100...100)
                }) {
                    Text("🎲 Random")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(Color.purple)
                        .cornerRadius(10)
                }
            }
            .padding(.vertical, 5)
            
            // Reset button
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color.gray)
                    .cornerRadius(8)
            }
            .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


