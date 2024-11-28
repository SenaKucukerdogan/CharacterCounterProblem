import Foundation

let text =
    """
    Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.

    Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:

    Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
    Return k.
    Custom Judge:

    The judge will test your solution with the following code:

    """
/*
 
 // Kelimeleri ayır
 let words = text.split(separator: " ")

 // Baş harfleri saymak için bir sözlük oluştur
 var letterCounts: [Character: Int] = [:]

 // Her kelimenin baş harfini bul ve sayısını artır
 for word in words {
     if let firstLetter = word.first {
         let uppercasedLetter = Character(firstLetter.uppercased())
         if letterCounts[uppercasedLetter] != nil {
             letterCounts[uppercasedLetter]! += 1
         } else {
             letterCounts[uppercasedLetter] = 1
         }
     }
 }

 // Sonuçları yazdır
 for (letter, count) in letterCounts {
     print("\(letter): \(count)")
 }

 */

// Kelimeleri ayır
let words = text.split { $0.isWhitespace || $0.isPunctuation }

// Baş harfleri saymak için bir sözlük oluştur
var letterCounts: [Character: Int] = [:]

// Her kelimenin baş harfini al ve sayısını artır
for word in words {
    if let firstLetter = word.first {
        let uppercasedLetter = Character(firstLetter.uppercased()) // Harfleri büyük yaparak gruplandırmayı birleştir
        letterCounts[uppercasedLetter, default: 0] += 1
    }
}

// Sonuçları yazdır
for (letter, count) in letterCounts.sorted(by: { $0.key < $1.key }) {
    print("\(letter): \(count)")
}



