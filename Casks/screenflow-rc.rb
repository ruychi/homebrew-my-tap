cask 'screenflow-rc' do
  version '7.1.1'
  sha256 :no_check

  url "http://amorimcruz.myqnapcloud.com/apps/ScreenFlow-#{version}.dmg"
  #appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
  #        checkpoint: '8283f97fdbd4f5374acf9dcef4fe2359e68f5d5196620bb063ff884e0814fbc1'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates false
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'

  caveats "in terminal execute command before run app first time: sudo spctl --master-disable"

end
