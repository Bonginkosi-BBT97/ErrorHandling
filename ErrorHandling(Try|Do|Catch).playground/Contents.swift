import Foundation

func readTxtFile(_ name:String) throws ->String {
    guard var fileUrl = Bundle.main.url(forResource: name, withExtension: "txt") else {
        return "Guard: File does not exist"
    }

   // fileUrl.appendPathComponent("invalid file")
    let text = try String(contentsOf: fileUrl)
    return text


//    do {
//        let text = try String(contentsOf: fileUrl)
//        return text
//    } catch {
//        return error.localizedDescription
//
//    }


}
let content = try? readTxtFile("bobo")
print(content!)
