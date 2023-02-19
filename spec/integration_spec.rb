require 'diary'
require 'diary_entry'

RSpec.describe 'integration' do
  context "after adding some entries" do
    it "lists them out" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("monday", "what happened on monday")
      diary_entry_2 = DiaryEntry.new("tuesday", "what happened on tuesday")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)

      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    describe "#count_words" do
      xit "counts the words in all diary entries" do
        diary = Diary.new
      diary_entry_1 = DiaryEntry.new("monday", "what happened on monday")
      diary_entry_2 = DiaryEntry.new("tuesday", "what happened on tuesday")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 8
      end
    end
  end
end