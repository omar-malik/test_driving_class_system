require_relative './diary_entry'
class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    # entry is an instance of DiaryEntry
    # Returns nothing
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words

  end

  def reading_time(wpm)

  end

  def find_best_entry_for_reading_time(wpm, minutes)

  end

end