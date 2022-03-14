import Foundation

/*
 * Reto #1
 * ¿ES UN ANAGRAMA?
 * Fecha publicación enunciado: 03/01/22
 * Fecha publicación resolución: 10/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Bool) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


func Anagram(word1 : String, word2: String) -> Bool {
    let groupeLetter1 = readWord(word: word1)
    let groupedLetter2 = readWord(word: word2)
    var founded : Bool = false
    if word1 == word2 {
        return false
    }
    for m1 in groupeLetter1 {
        for m2 in groupedLetter2 {
            if m1[1] == m2[1] {
                if m1[0] != m2[0]{
                    return false
                }else{
                    print(m1)
                    print(m2)
                    founded = true
                    break
                }
            }
        }
        if founded == false {
            return false
        }
    }
    
    return true
}

func readWord(word : String) -> [[String]]{
    var matrix = [[String]]()
    var add = true
    for w in word {
        if matrix.isEmpty {
            let first : [String] = ["0", w.description]
            matrix.append(first)
        }
        for index in 0..<matrix.count {
            if w.description == matrix[index][1].description {
                matrix[index][0] = String(Int(matrix[index][0] )! + 1)
                add = false
            }else {
                add = true
            }
        }
        if add == true {
            matrix.append(["1",w.description])
        }
    }
    return matrix
}

print(Anagram(word1: "hola", word2: "allho"))
