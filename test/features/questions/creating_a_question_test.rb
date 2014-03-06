require "test_helper"

class QuestionsAndAnswers::CreatingAQuestionTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    page.must_have_content "Questions and Answers"
  end
end
