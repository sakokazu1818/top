class AnbridgesController < ApplicationController
  before_action :set_contents

  layout 'anbridges.html.haml'

  def index
    @news = [{ title: '2018年09月30日お知らせ', text: '吸収合併及び商号変更に関するお知らせ'},
      { title: '2018年06月06日プレス', text: '株式投資型クラウドファンディング募集の中止について'},
      { title: '2018年06月01日プレス', text: '＝総額2億円の資金調達を実施＝ベクトル・ベストワンドットコム・東証一部上場創業者など'},
      { title: '2018年05月25日お知らせ', text: '株式投資型クラウドファンディングを開始！'},
      { title: '2017年10月05日お知らせ', text: '人と企業をストーリーでつなぐ LISTEN【リスン】に掲載されました'}
    ]

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

  private

  def set_contents
    @contents = [{ ja: '会社概要', es: 'COMPANY PROFILE', class: 'company-profile', href: company_path },
      { ja: '事業内容', es: 'BUSINESS DESCRIPTION', class: 'business-description', href: business_path },
      { ja: '新卒採用', es: 'GRADUATE RECRUITING', class: 'graduate-recruiting', href: graduate_path },
      { ja: 'キャリア採用', es: 'CAREER OPPORTUNITIES', class: 'career-opportunities', href: career_path }]
  end
end
