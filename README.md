# provider_shopper
A Flutter sample app copied from [https://github.com/flutter/samples/tree/main/provider_shopper](https://github.com/flutter/samples/tree/main/provider_shopper)


## Prerequisite
- Install Flutter SDK [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)
-  Install dart on developer machine# [https://dart.dev/web/get-started](https://dart.dev/web/get-started)
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
    flutter pub token add "${SAAS_HOST}/artifactory/api/pub/krishnam-pub-virtual"
`````

## Flutter app
- Edit pubspec.yaml and update 
    - from 
    `````
        publish_to: none
    `````
    - to
    `````    
        publish_to: https://psazuse.jfrog.io/artifactory/api/pub/krishnam-pub-virtual/
    `````
- Build and publish
`````
    ./jfcli-pub.sh 
`````

## ERRORS
-  <details><summary>Error: Flutter users should use `flutter pub` instead of `dart pub`
</summary>
Install Flutter SDK from https://docs.flutter.dev/get-started/install
</details>
- <details><summary>Error: warning - pubspec.yaml:16:5 - Publishable packages can't have 'git' dependencies. Try adding a 'publish_to: none' entry to mark the package as not for publishing or remove the git dependency. - invalid_dependency
</summary>
Update pubspec.yaml as 
``````
publish_to: none
``````
</details>
- <details><summary>Error: Because provider_shopper depends on analysis_defaults from path which doesn't exist (could not find package analysis_defaults at "../analysis_defaults"), version solving failed.
</summary>
Commented section 'analysis_defaults' in pubspec.yaml 
``````
  # analysis_defaults:
  #   path: ../analysis_defaults
``````
</details>

<!--  
- <details><summary>Error: </summary>
``````
``````
</details>
-->

## References
- https://jfrog.com/blog/creating-your-first-pub-project-with-jfrog-artifactory/
- https://jfrog.com/help/r/jfrog-artifactory-documentation/pub-repositories
- https://jfrog.com/help/r/artifactory-how-to-authenticate-a-git-lfs-repository-via-ssh/artifactory-how-to-authenticate-a-git-lfs-repository-via-ssh