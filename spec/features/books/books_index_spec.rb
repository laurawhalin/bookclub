require "rails_helper"

describe "books #index" do
  describe "they visit /books" do
    let!(:book1) { FactoryBot.create(:book) }
    let!(:book2) { FactoryBot.create(:book, title: "Jane Eyre", genre: "English Classic")}

    before do
      visit "/books"
    end

    it "displays all books" do
      expect(page).to have_link(book1.title)
      expect(page).to have_link(book2.title)

      expect(page).to have_content(book1.author)
      expect(page).to have_content(book1.genre)
      expect(page).to have_content(book1.description)
      expect(page).to have_content(book1.average_rating)
    end

    it "displays a link to add a new book" do
      expect(page).to have_link("Add Book")
    end

    it "displays a link to delete a book" do
      expect(page).to have_link("Delete")
    end
  end
end
