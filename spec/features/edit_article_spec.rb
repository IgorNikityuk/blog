require 'spec_helper'
require 'database_cleaner'

describe "Edit articles" do
  it "should be ability to create article with database" do
    article = create :article
    visit 'http://localhost:3000/'
    click_link article.title
    expect(find(:xpath, "html/body/div[1]/div[2]/table/tbody/tr[2]/td[1]/a").text).to eq "Automation_title"
    expect(find(:xpath, "html/body/div[1]/div[2]/table/tbody/tr[2]/td[3]").text).to eq "Automation_text"
    find(".edit_link").click
    fill_in "article_title", with: "Automation_titleEdited"
    fill_in "article_text",  with: "Automation_textEdited"
    click_button "Save"
    click_link "Back"
    expect(find(:xpath, "html/body/div[1]/div[2]/table/tbody/tr[2]/td[1]/a").text).to eq "Automation_titleEdited"
    expect(find(:xpath, "html/body/div[1]/div[2]/table/tbody/tr[2]/td[3]").text).to eq "Automation_textEdited"
  end
end