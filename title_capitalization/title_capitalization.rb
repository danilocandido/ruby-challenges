class TitleCapitalization

  EXCEPT_WORDS = %w[a the to at in with and but or].freeze
  def self.upstyle(title)
    title.downcase.split.map{ |word| has?(word) ? word : word.capitalize  }.join(' ')
  end

  class << self
    private

    def has?(word)
      EXCEPT_WORDS.include? word
    end
  end
end
