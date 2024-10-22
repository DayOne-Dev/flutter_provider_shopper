# provider_shopper
A Flutter sample app copied from [https://github.com/flutter/samples/tree/main/provider_shopper](https://github.com/flutter/samples/tree/main/provider_shopper)


## Prerequisite
- Install dart on developer machine# [https://dart.dev/web/get-started](https://dart.dev/web/get-started)
`````
brew install dart
dart pub global activate webdev
`````
- VS Code plugin at [https://dartcode.org](https://dartcode.org)



## JFrog Artifactory Admin
- create repo structure
    - krishnam-pub-virtual      -- Default: DEV repo
    - krishnam-pub-dev-local    -- ENV: DEV
    - krishnam-pub-qa-local     -- ENV: QA
    - pub-remote                --> https://pub.dartlang.org
- configure token
`````
    dart pub token add "${SAAS_HOST}/artifactory/api/pub/krishnam-pub-virtual"
`````

## Flutter app
- Edit pubspec.yaml and update 
    - publish_to: none
    - publish_to: none
- 