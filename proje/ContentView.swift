import SwiftUI
import FirebaseAuth

struct ContentView: View {
    var body: some View {
        Text("Hello, Firebase!")
            .onAppear {
                Auth.auth().signInAnonymously { result, error in
                    if let error = error {
                        print("Auth error: \(error.localizedDescription)")
                    } else {
                        print("Signed in anonymously with uid: \(result?.user.uid ?? "nil")")
                    }
                }
            }
    }
}
