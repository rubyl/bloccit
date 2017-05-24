require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "Question Title", body: "My question?", resolved: false) }
  let(:answer) { Answer.create!(body: 'This is my answer', question: question) }

  describe "attributes" do
    it "has a body attribute" do
      expect(answer).to have_attributes(body: "This is my answer")
    end
  end
end
