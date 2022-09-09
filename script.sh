git clone https://github.com/InstaSell/Instasell-new.git
cd Instasell-new
git checkout unit-tests
yarn
cd ios
rm -rf Podfile.lock 
pod install
cd ..
brew tap wix/brew
brew install applesimutils
yarn global add detox-cli
detox build -c ios
detox test -c ios