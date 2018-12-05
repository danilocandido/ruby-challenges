class WordScore
  SCORING_SYSTEM = { 'F' => 3, 'J' => 6, 'X' => 12, 'T' => 5, 'A' => 2, 'I' => 2, 'E' => 2, 'O' => 2 }.freeze

  def self.result(word)
    chars = word.upcase.chars
    chars.reduce(0) { |count, letter| count += SCORING_SYSTEM.fetch(letter, 0) }
  end
end
