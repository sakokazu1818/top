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

    render :company_smart_phone, layout: 'anbridges_smart_phone.html.haml' if request.smart_phone?
  end

  def service
    @title = { title_ja: '事業内容', title_es: 'BUSINESS DESCRIPTION' }

    render :service_smart_phone, layout: 'anbridges_smart_phone.html.haml' if request.smart_phone?
  end

  def recruit
    @title = { title_ja: '新卒採用', title_es: 'GRADUATE RECRUITING' }

    render :recruit_smart_phone, layout: 'anbridges_smart_phone.html.haml' if request.smart_phone?
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
        class: 'company-profile', href: company_path , title: '会社概要',
        text: ['企業と人材の“生の声”を繋ぐ架け橋になる為、',
          '「人が好き」という想いを形にホスピタリティに磨きをかけ、',
          '関わる全ての人に寄り添います。']
        },
      { ja: 'MISSON', es: 'GRADUATE RECRUITING', img: 'graduate_recruiting.jpg',
        class: 'headerimage', href: misson_path, title: '未来を創造し、関わる全ての人を幸せに。',
        text: ['従業員とその家族をはじめ、顧客取引先、関わる全ての人の幸せと',
          '明るい未来を創造することに全力で挑戦し続けます。']
        },
      { ja: 'SERVICE', es: 'BUSINESS DESCRIPTION', img: 'business_description.jpg',
        class: 'business-description', href: service_path, title: '事業内容',
        text: ['中途・IT人材・アルバイトなど、様々な人材サービスを展開する',
          'Anbridge。',
          'その中で、企業と求職者の双方から話を伺い、',
          'ベストなマッチングを引き出す、エージェント集団です。']
         },
      { ja: 'RECRUIT', es: 'GRADUATE RECRUITING', img: 'graduate_recruiting.jpg',
        class: 'graduate-recruiting', href: recruit_path, title: '採用について',
        text: ['お客様の幅を広げ、事業を拡大中の弊社',
          '創業期ともいえる新たな挑戦を続ける今、',
          '新鮮な刺激をもたらしてくれる、新戦力を求めています。']
        }
    ]
  end
end
