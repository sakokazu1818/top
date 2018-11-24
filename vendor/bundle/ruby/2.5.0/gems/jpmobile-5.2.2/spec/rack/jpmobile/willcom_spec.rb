require File.join(__dir__, '../../rack_helper.rb')

describe Jpmobile::MobileCarrier, 'willcom' do
  include Rack::Test::Methods

  context '端末種別で' do
    it 'WX310K が判別できること' do
      res = Rack::MockRequest.env_for(
        'http://jpmobile-rails.org/',
        'HTTP_USER_AGENT' => 'Mozilla/3.0(WILLCOM;KYOCERA/WX310K/2;1.2.2.16.000000/0.1/C100) Opera 7.0',
      )
      env = Jpmobile::MobileCarrier.new(UnitApplication.new).call(res)[1]

      expect(env['rack.jpmobile'].class).to eq(Jpmobile::Mobile::Willcom)
      expect(env['rack.jpmobile'].position).to be_nil
      expect(env['rack.jpmobile'].ident).to be_nil
      expect(env['rack.jpmobile'].supports_cookie?).to be_truthy
    end

    it 'AH-H3001V が判別できること' do
      res = Rack::MockRequest.env_for(
        'http://jpmobile-rails.org/',
        'HTTP_USER_AGENT' => 'Mozilla/3.0(DDIPOCKET;KYOCERA/AH-K3001V/1.8.2.71.000000/0.1/C100) Opera 7.0',
      )
      env = Jpmobile::MobileCarrier.new(UnitApplication.new).call(res)[1]

      expect(env['rack.jpmobile'].class).to eq(Jpmobile::Mobile::Ddipocket)
      expect(env['rack.jpmobile'].position).to be_nil
      expect(env['rack.jpmobile'].ident).to be_nil
      expect(env['rack.jpmobile'].supports_cookie?).to be_truthy
    end
  end

  context 'GPS で' do
    it '緯度経度を取得できること' do
      res = Rack::MockRequest.env_for(
        'http://jpmobile-rails.org/',
        'HTTP_USER_AGENT' => 'Mozilla/3.0(WILLCOM;KYOCERA/WX310K/2;1.2.2.16.000000/0.1/C100) Opera 7.0',
        'QUERY_STRING' => 'pos=N43.04.34.049E141.21.03.279',
      )
      env = Jpmobile::MobileCarrier.new(UnitApplication.new).call(res)[1]

      expect(env['rack.jpmobile'].position.lat).to be_within(1e-4).of(43.078568)
      expect(env['rack.jpmobile'].position.lon).to be_within(1e-4).of(141.347223)
    end
  end

  context 'IPアドレス制限で' do
    it '正しいIPアドレス空間からのアクセスを判断できること' do
      res = Rack::MockRequest.env_for(
        'http://jpmobile-rails.org/',
        'HTTP_USER_AGENT' => 'Mozilla/3.0(WILLCOM;KYOCERA/WX310K/2;1.2.2.16.000000/0.1/C100) Opera 7.0',
        'REMOTE_ADDR' => '61.198.142.1',
      )
      env = Jpmobile::MobileCarrier.new(UnitApplication.new).call(res)[1]

      expect(env['rack.jpmobile'].valid_ip?).to be_truthy
    end

    it '正しくないIPアドレス空間からのアクセスを判断できること' do
      res = Rack::MockRequest.env_for(
        'http://jpmobile-rails.org/',
        'HTTP_USER_AGENT' => 'Mozilla/3.0(WILLCOM;KYOCERA/WX310K/2;1.2.2.16.000000/0.1/C100) Opera 7.0',
        'REMOTE_ADDR' => '127.0.0.1',
      )
      env = Jpmobile::MobileCarrier.new(UnitApplication.new).call(res)[1]

      expect(env['rack.jpmobile'].valid_ip?).to be_falsey
    end
  end
end
