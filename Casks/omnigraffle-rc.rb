cask 'omnigraffle' do

    version '7.4.3'
    sha256 :no_check
    url "http://amorimcruz.myqnapcloud.com/apps/OmniGraffle-#{version}.dmg"


  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'

  caveats "http://amorimcruz.myqnapcloud.com/apps/OmniGraffle-7.4.3-SERIAL.txt"

end
