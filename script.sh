git clone https://github.com/InstaSell/Instasell-new.git
cd Instasell-new
git checkout unit-tests
yarn
yarn patch-package
cd ios
pod install
cd ..
yarn react-native link
brew tap wix/brew
brew install applesimutils
yarn global add detox-cli
detox build -c ios
detox test -c ios