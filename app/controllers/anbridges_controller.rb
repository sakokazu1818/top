class AnbridgesController < ApplicationController
  layout 'anbridges.html.haml'

  def index
    @news = [{ title: '2018年09月30日お知らせ', text: '吸収合併及び商号変更に関するお知らせ'},
      { title: '2018年06月06日プレス', text: '株式投資型クラウドファンディング募集の中止について'},
      { title: '2018年06月01日プレス', text: '＝総額2億円の資金調達を実施＝ベクトル・ベストワンドットコム・東証一部上場創業者など'},
      { title: '2018年05月25日お知らせ', text: '株式投資型クラウドファンディングを開始！'},
      { title: '2017年10月05日お知らせ', text: '人と企業をストーリーでつなぐ LISTEN【リスン】に掲載されました'}
    ]
  end
end
