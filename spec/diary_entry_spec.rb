require 'diary_entry'

RSpec.describe DiaryEntry do
  context 'when a diary entry is made' do
    diary_entry = DiaryEntry.new("monday", "what happened on monday")
    it "returns title as sting" do
      expect(diary_entry.title).to eq "monday"
    end

    it "returns the contents" do
      expect(diary_entry.contents).to eq "what happened on monday"
    end

    it "returns number of words in contents as an integer" do
      expect(diary_entry.count_words).to eq 4
    end

    it "returns words per minute when wpm == 1" do
      expect(diary_entry.reading_time(1)).to eq 4
    end
  end

  context 'testing the reading_chunk method indvidually' do
    xit 'returns a readable chunk' do
      diary_entry = DiaryEntry.new("monday", "what happened on monday")

      expect(diary_entry.reading_chunk(1, 1)).to eq "what"
    end

    xit 'returns next chunk' do
      diary_entry = DiaryEntry.new("monday", "what happened on monday")

      diary_entry.reading_chunk(1, 1)
      diary_entry.reading_chunk(1, 1)
      expect(diary_entry.reading_chunk(1, 1)).to eq "happened"
     
    end
  end

  context "when contents is empty" do
    diary_entry = DiaryEntry.new("title", "")
    
    it "counts the words as 0" do
      expect(diary_entry.count_words).to eq 0
    end
  end
end