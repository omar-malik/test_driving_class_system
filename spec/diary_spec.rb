require 'diary' 

RSpec.describe Diary do
  context "initially" do
    it "has an empty list of diary entries" do
      diary = Diary.new

      expect(diary.all).to eq []
    end
  end
end