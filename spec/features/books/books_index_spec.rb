require "rails_helper"

describe "books #index" do
  describe "they visit /books" do
    it "displays all books" do
      book1 = create(:book)
      book2 = create(:book, title: "Jane Eyre")
      visit '/books'

      expect(page).to have_content(book1.title)
      expect(page).to have_content(book2.title)
    end
  end
end
