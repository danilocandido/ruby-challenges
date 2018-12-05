require 'minitest/autorun'
require_relative 'title_capitalization'

class TitleCapitalizationTest < Minitest::Test
  def test_capitalize_one_word
    title = TitleCapitalization.upstyle('hello')
    assert_equal title, 'Hello'
  end

  def test_capitalize_two_words
    title = TitleCapitalization.upstyle('hello world')
    assert_equal title, 'Hello World'
  end

  def test_always_capitalize_the_first_word
    title = TitleCapitalization.upstyle('my last word')
    assert_equal title, 'My Last Word'
  end

  def test_except_words
    title = TitleCapitalization.upstyle('you and me')
    assert_equal title, 'You and Me'
  end

  def test_specific_frase
    title = TitleCapitalization.upstyle('i love solving problems and it is fun')
    assert_equal title, 'I Love Solving Problems and It Is Fun'
  end

  def test_another_frase
    title = TitleCapitalization.upstyle('wHy DoeS A biRd Fly?')
    assert_equal title, 'Why Does a Bird Fly?'
  end
end
