cask 'little-snitch-rc' do
  version '4.0.3'
  sha256 :no_check

  url "http://amorimcruz.myqnapcloud.com/apps/Little-Snitch-#{version}.dmg"
  #appcast 'https://www.obdev.at/products/littlesnitch/releasenotes.html',
  #        checkpoint: 'e22f14013a36a533eda2a657a92867edc70451365c0343ec9024c91affeba9e4'
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'

  auto_updates true
  depends_on macos: '>= :el_capitan'
  container type: :naked

  installer manual: "LittleSnitch-#{version}.dmg/Little Snitch Installer.app"

  uninstall launchctl: [
                         'at.obdev.LittleSnitchUIAgent',
                         'at.obdev.littlesnitchd',
                       ]

  zap delete: [
                '/Library/Application Support/Objective Development/Little Snitch',
                '/Library/Logs/LittleSnitchDaemon.log',
                '~/Library/Application Support/Little Snitch',
                '~/Library/Caches/at.obdev.LittleSnitchAgent',
                '~/Library/Caches/at.obdev.LittleSnitchConfiguration',
                '~/Library/Caches/at.obdev.LittleSnitchSoftwareUpdate',
                '~/Library/Caches/com.apple.helpd/Generated/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/at.obdev.LittleSnitchConfiguration.help',
                '~/Library/Logs/Little Snitch Agent.log',
                '~/Library/Logs/Little Snitch Installer.log',
                '~/Library/Logs/Little Snitch Network Monitor.log',
                '~/Library/Saved Application State/at.obdev.LittleSnitchInstaller.savedState',
              ],
      trash:  [
                '~/Library/Preferences/at.obdev.LittleSnitchAgent.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchConfiguration.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchInstaller.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                '~/Library/Preferences/at.obdev.LittleSnitchSoftwareUpdate.plist',
              ],
      rmdir:  '/Library/Application Support/Objective Development'

  caveats do
    reboot
  end
end
