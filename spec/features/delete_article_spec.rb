require 'spec_helper'
require 'database_cleaner'

describe "Edit articles" do
  it "should be ability to create article with database" do
    article = create :article
    visit 'http://localhost:3000/'
    click_link article.title
    find(".delete").click
  end
end