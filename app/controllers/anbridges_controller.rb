class AnbridgesController < ApplicationController
  before_action :set_contents

  layout 'anbridges.html.haml'

  def index
    # TODO
    # @news = News.all
    @news = []

    render :index_smart_phone, layout: 'anbridges_smart_phone.html.haml' if request.smart_phone?
  end

  def company
    @title = { title_ja: '会社概要', title_es: 'COMPANY PROFILE' }
  end

  def business
    @title = { title_ja: '事業内容', title_es: 'BUSINESS DESCRIPTION' }
  end

  def graduate
    @title = { title_ja: '新卒採用', title_es: 'GRADUATE RECRUITING' }
  end

  def career
    @title = { title_ja: 'キャリア採用', title_es: 'CAREER OPPORTUNITIES' }
  end

  def misson
  end

  private

  def set_contents
    @contents = [
      { ja: 'COMPANY', es: 'COMPANY PROFILE', img: 'company_profile.jpg',
        class: 'company-profile', href: company_path },
      { ja: 'MISSON', es: 'GRADUATE RECRUITING', img: 'graduate_recruiting.jpg',
        class: 'graduate-recruiting', href: misson_path },
      { ja: 'SERVICE', es: 'BUSINESS DESCRIPTION', img: 'business_description.jpg',
        class: 'business-description', href: business_path },
      { ja: 'RECRUIT', es: 'GRADUATE RECRUITING', img: 'graduate_recruiting.jpg',
        class: 'graduate-recruiting', href: graduate_path }
    ]
  end
end
