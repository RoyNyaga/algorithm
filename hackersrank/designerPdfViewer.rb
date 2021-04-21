def designerPdfViewer(h, word)
  letter_hash = { "a": h[0], "b": h[1], "c": h[2], "d": h[3], "e": h[4], "f": h[5],
  "g": h[6], "h": h[7], "i": h[8], "j": h[9], "k": h[10], "l": h[11],
  "m": h[12], "n": h[13], "o": h[14], "p": h[15], "q": h[16], "r": h[17], "s": h[18],
  "t": h[19], "u": h[20], "v": h[21], "w": h[22], "x": h[23], "y": h[24], "z": h[25]
  }
  highest_height = 0
  word.each_char do |c|  
    height = letter_hash[:"#{c}"]
    highest_height = height if height > highest_height
  end 
  return highest_height * word.length
end

arr = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7]
p designerPdfViewer(arr, "zaba") 
