class Encryptor

end

class Decryptor

end

class EncryptionEngine
 def encrypt(key, message)
   new_message = []
   message.split.each do |word|
    new_message << rot_word(key, word)
   end
   new_message.join(" ")
 end
 def rot_letter(key,letter)
   key.times do
     letter.succ!
   end
   letter.size == 2 ? letter.delete!("a") : letter
 end
 def rot_word(key, word)
   new_word = []
   word.split('').each do |letter|
     new_word << rot_letter(key,letter)
   end
   new_word.join
 end
end
