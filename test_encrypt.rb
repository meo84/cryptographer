require 'minitest/autorun'
require './encrypt'

class EncryptionEngineTest < Minitest::Test
  def test_it_encrypts_using_rot13
    engine = EncryptionEngine.new
    output = engine.encrypt(13, "My message")
    assert_equal "Zl zrffntr", output
  end

  def test_it_rotates_lowercase_letter
    engine = EncryptionEngine.new
    output = engine.rot_letter(13, "m")
    assert_equal "z", output
  end
  def test_it_rotates_uppercase_letter
    engine = EncryptionEngine.new
    output = engine.rot_letter(13, "M")
    assert_equal "Z", output
  end
  def test_it_rotates_word
    engine = EncryptionEngine.new
    output = engine.rot_word(13, "message")
    assert_equal "zrffntr", output
  end
    
end
