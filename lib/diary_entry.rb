class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    return @title

  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").count
  end

  def reading_time(wpm)
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    num_of_words = wpm * minutes
    word_list = @contents.split(" ")

    start_chunk = 0
    end_chunk = num_of_words + start_chunk
    readable_chunk = word_list[0, 1]
    start_chunk = end_chunk
    return readable_chunk.join
  end

end