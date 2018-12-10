require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:news, News.new(
      :title => "MyString",
      :text => "MyString",
      :tag => "MyString"
    ))
  end

  it "renders new news form" do
    render

    assert_select "form[action=?][method=?]", news_index_path, "post" do

      assert_select "input#news_title[name=?]", "news[title]"

      assert_select "input#news_text[name=?]", "news[text]"

      assert_select "input#news_tag[name=?]", "news[tag]"
    end
  end
end
