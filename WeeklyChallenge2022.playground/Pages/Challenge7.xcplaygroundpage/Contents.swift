import Foundation

/*
 * Reto #7
 * CONTANDO PALABRAS
 * Fecha publicación enunciado: 14/02/22
 * Fecha publicación resolución: 21/02/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

let sentence : String = "Habia una vez un pez, dicho pez estaba muerto en una laguna muy lejana."

var array = sentence.uppercased().components(separatedBy: " ")
var arrayOrden = [[String]]()

for i in 0..<array.count{
    array[i] = String(array[i]).replacingOccurrences(of: ".", with: "")
    array[i] = String(array[i]).replacingOccurrences(of: ",", with: "")
    array[i] = String(array[i]).replacingOccurrences(of: ";", with: "")
    array[i] = String(array[i]).replacingOccurrences(of: "?", with: "")
}
for word in array {
    if arrayOrden .isEmpty {
        arrayOrden.append(["1", word])
    }else{
        var band = true
        for i in 0..<arrayOrden.count {
            if arrayOrden[i][1] != word {
                band = false
            }else {
                band = true
                arrayOrden[i][0] = String(Int(arrayOrden[i][0])! + 1)
                break
            }
        }
        if band==false{
            arrayOrden.append(["1",word])
        }
        
    }
}
print(arrayOrden)
print(array)
print("hay un total de \(array.count) palabras")
