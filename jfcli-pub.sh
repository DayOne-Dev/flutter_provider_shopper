# Install and config Flutter SDK from https://docs.flutter.dev/get-started/install/macos/web

clear
# TOKEN SETUP
# jf c add --user=krishnam --interactive=true --url=https://psazuse.jfrog.io --overwrite=true 


# Config - Artifactory info
export JF_HOST="psazuse.jfrog.io"  JFROG_RT_USER="krishnam" JFROG_CLI_LOG_LEVEL="DEBUG" # JF_ACCESS_TOKEN="<GET_YOUR_OWN_KEY>"
export JF_RT_URL="https://${JF_HOST}"
export RT_REPO_VIRTUAL="krishnam-pub-virtual"

### CLI
export BUILD_NAME="provider_shopper" BUILD_ID="cmd.pub.$(date '+%Y-%m-%d-%H-%M')" 

## Health check
jf rt ping --url="${JF_RT_URL}/artifactory"
dart --version
flutter --version

# dart pub token add "${PUB_HOSTED_URL}"  # add if list is null
# flutter pub   # install flutter

# Dart/Pub config
echo "\n\n**** dart: config ****\n" 
export PUB_HOSTED_URL="${JF_RT_URL}/artifactory/api/pub/${RT_REPO_VIRTUAL}"
#dart pub token list
flutter pub token list

# resolve
echo "\n\n**** dart: resolve ****\n" 
# dart pub get
flutter pub get

# publish
echo "\n\n**** dart: pub publish ****\n" 
# dart pub publish
flutter pub publish --dry-run