require 'minitest/autorun'
require_relative 'word_score'

class WordScoreTest < Minitest::Test
  def test_one_letter_by_time
    assert WordScore.result('F'), 3
    assert WordScore.result('J'), 6
    assert WordScore.result('X'), 12
    assert WordScore.result('A'), 2
    assert WordScore.result('I'), 2
    assert WordScore.result('E'), 2
    assert WordScore.result('O'), 2
    assert WordScore.result('T'), 5
  end

  def test_word_with_score_20
    assert WordScore.result('XRay Machine'), 20
  end

  def test_word_with_score_13
    assert WordScore.result('Jabbt'), 13
  end
end
