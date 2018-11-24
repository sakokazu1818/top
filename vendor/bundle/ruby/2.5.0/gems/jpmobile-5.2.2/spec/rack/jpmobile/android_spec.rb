require File.join(__dir__, '../../rack_helper.rb')

describe Jpmobile::MobileCarrier, 'android' do
  include Rack::Test::Methods

  context '端末種別で' do
    it 'Android を判別できること' do
      res = Rack::MockRequest.env_for(
        'http://jpmobile-rails.org/',
        'HTTP_USER_AGENT' => 'Mozilla/5.0 (Linux; U; Android 1.6; ja-jp; SonyEriccsonSO-01B Build/R1EA018) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1',
      )
      env = Jpmobile::MobileCarrier.new(UnitApplication.new).call(res)[1]

      expect(env['rack.jpmobile'].class).to            eq(Jpmobile::Mobile::Android)
      expect(env['rack.jpmobile'].position).to         be_nil
      expect(env['rack.jpmobile'].smart_phone?).to     be_truthy
      expect(env['rack.jpmobile'].supports_cookie?).to be_truthy
    end
  end
end
