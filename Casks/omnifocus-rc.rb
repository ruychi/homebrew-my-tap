cask 'omnifocus-rc' do

    version '2.11'
    sha256 :no_check
    url "http://amorimcruz.myqnapcloud.com/apps/OmniFocus-#{version}.dmg"


  # appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniFocus#{version.major}",
  #        checkpoint: '8024489488e25689fe08ec047f3f47e1f7a26e662665e6efdff66b4f074b7328'
  name 'OmniFocus'
  homepage 'https://www.omnigroup.com/omnifocus/'

  app 'OmniFocus.app'


  uninstall quit: 'com.omnigroup.OmniFocus2'
  zap delete: [
                  "~/Library/Containers/com.omnigroup.OmniFocus#{version}",
                  "~/Library/Preferences/com.omnigroup.OmniFocus#{version}.LSSharedFileList.plist",
                  '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                  "~/Library/Caches/Metadata/com.omnigroup.OmniFocus#{version}",
                  "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus#{version}.sfl",
                  '~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus',
                  "~/Library/Saved Application State/com.omnigroup.OmniFocus#{version}.savedState",
                ]
  
  caveats "http://amorimcruz.myqnapcloud.com/apps/OmniFocus-2.11-SERIAL.txt"


end
