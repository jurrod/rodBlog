//import UIKit
//
//// var rod = "my name is rod";
//// print(rod);
//
//// okay lets see what we can do in a 'playground' :)
//var pi = 3.14;
//var r = 4.0;
//var volume = pi * pow(r, 3.0); // pi*r^3 = v of sphere?
//// need to use string formatter
//var vol:String = String(format:"%f",volume)
//// inserting variables into string statements
//// is done via '\(varName)' syntax !
//// print("The volume of a sphere with radius 4 cm \(vol) cm^3");
//// more fun math?
////print("Lets do some math?")
//
//// create function
//func poly(value: String) -> Double {
//    // type format
//    guard var valFormat = Double(value) else { return 0 };
//    // y = 3/8 * x^2 - 10
//    var m = 3/8;
//    //var doubleX = Double(exactly: value);
//    var xSquare = pow(Double(valFormat), 2.0);
//    let y = (Double(m) * xSquare) - 10.0;
//    return y;
//}
//var inputPoly = "1.0"; // default value for input
////print("What x value would you like to see for the function 'y = 3/8 * x^2 - 10':\n");
//inputPoly = readLine() ?? "1.0"; // fill default value..again?
//var polyReturn = poly(value: inputPoly);
////
////
//// Everything above this line was random testing...
////
//

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Text("Hello world!")
    }
}
PlaygroundPage.current.setLiveView(ContentView())
