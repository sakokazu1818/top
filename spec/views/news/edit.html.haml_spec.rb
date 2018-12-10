require 'rails_helper'

RSpec.describe "news/edit", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :title => "MyString",
      :text => "MyString",
      :tag => "MyString"
    ))
  end

  it "renders the edit news form" do
    render

    assert_select "form[action=?][method=?]", news_path(@news), "post" do

      assert_select "input#news_title[name=?]", "news[title]"

      assert_select "input#news_text[name=?]", "news[text]"

      assert_select "input#news_tag[name=?]", "news[tag]"
    end
  end
end
