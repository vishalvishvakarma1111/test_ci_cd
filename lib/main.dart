import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//| Action                                      | Description                                                               | Author           |
// +---------------------------------------------+---------------------------------------------------------------------------+------------------+
// | adb                                         | Run ADB Actions                                                           | hjanuschka       |
// | adb_devices                                 | Get an array of Connected android device serials                          | hjanuschka       |
// | add_extra_platforms                         | Modify the default list of supported platforms                            | lacostej         |
// | add_git_tag                                 | This will add an annotated git tag to the current branch                  | Multiple         |
// | app_store_build_number                      | Returns the current build_number of either live or edit version           | hjanuschka       |
// | app_store_connect_api_key                   | Load the App Store Connect API token to use in other fastlane tools and   | joshdholtz       |
// |                                             | actions                                                                   |                  |
// | appaloosa                                   | Upload your app to "Appaloosa Store" (https://www.appaloosa-store.com/    | Appaloosa        |
// |                                             | 🔗)                                                                       |                  |
// | appetize                                    | Upload your app to "Appetize.io" (https://appetize.io/ 🔗) to stream it   | Multiple         |
// |                                             | in browser                                                                |                  |
// | appetize_viewing_url_generator              | Generate an URL for appetize simulator                                    | KrauseFx         |
// | appium                                      | Run UI test by Appium with RSpec                                          | yonekawa         |
// | appledoc                                    | Generate Apple-like source code documentation from the source code        | alexmx           |
// | appstore                                    | Alias for the `upload_to_app_store` action                                | KrauseFx         |
// | apteligent                                  | Upload dSYM file to "Apteligent (Crittercism)"                            | Mo7amedFouad     |
// |                                             | (http://www.apteligent.com/ 🔗)                                           |                  |
// | artifactory                                 | This action uploads an artifact to artifactory                            | Multiple         |
// | automatic_code_signing (DEPRECATED)         | Configures Xcode's Codesigning options                                    | Multiple         |
// | backup_file                                 | This action backs up your file to "[path].back"                           | gin0606          |
// | backup_xcarchive                            | Save your [zipped] xcarchive elsewhere from default path                  | dral3x           |
// | badge (DEPRECATED)                          | Automatically add a badge to your app icon                                | DanielGri        |
// | build_and_upload_to_appetize                | Generate and upload an ipa file to appetize.io                            | KrauseFx         |
// | build_android_app                           | Alias for the `gradle` action                                             | Multiple         |
// | build_app                                   | Easily build and sign your app (via _gym_)                                | KrauseFx         |
// | build_ios_app                               | Alias for the `build_app` action but only for iOS                         | KrauseFx         |
// | build_mac_app                               | Alias for the `build_app` action but only for macOS                       | KrauseFx         |
// | bundle_install                              | This action runs `bundle install` (if available)                          | Multiple         |
// | capture_android_screenshots                 | Automated localized screenshots of your Android app (via _screengrab_)    | Multiple         |
// | capture_ios_screenshots                     | Generate new localized screenshots on multiple devices (via _snapshot_)   | KrauseFx         |
// | capture_screenshots                         | Alias for the `capture_ios_screenshots` action                            | KrauseFx         |
// | carthage                                    | Runs `carthage` for your project                                          | Multiple         |
// | cert                                        | Alias for the `get_certificates` action                                   | KrauseFx         |
// | changelog_from_git_commits                  | Collect git commit messages into a changelog                              | Multiple         |
// | chatwork                                    | Send a success/error message to "ChatWork" (https://go.chatwork.com/ 🔗)  | astronaughts     |
// | check_app_store_metadata                    | Check your app's metadata before you submit your app to review (via       | taquitos         |
// |                                             | _precheck_)                                                               |                  |
// | clean_build_artifacts                       | Deletes files created as result of running gym, cert, sigh or             | lmirosevic       |
// |                                             | download_dsyms                                                            |                  |
// | clean_cocoapods_cache                       | Remove the cache for pods                                                 | alexmx           |
// | clear_derived_data                          | Deletes the Xcode Derived Data                                            | KrauseFx         |
// | clipboard                                   | Copies a given string into the clipboard. Works only on macOS             | Multiple         |
// | cloc                                        | Generates a Code Count that can be read by Jenkins (xml format)           | intere           |
// | cocoapods                                   | Runs `pod install` for the project                                        | Multiple         |
// | commit_github_file                          | This will commit a file directly on GitHub via the API                    | tommeier         |
// | commit_version_bump                         | Creates a 'Version Bump' commit. Run after `increment_build_number`       | lmirosevic       |
// | copy_artifacts                              | Copy and save your build artifacts (useful when you use reset_git_repo)   | lmirosevic       |
// | create_app_on_managed_play_store            | Create Managed Google Play Apps                                           | janpio           |
// | create_app_online                           | Creates the given application on iTC and the Dev Portal (via _produce_)   | KrauseFx         |
// | create_keychain                             | Create a new Keychain                                                     | gin0606          |
// | create_pull_request                         | This will create a new pull request on GitHub                             | Multiple         |
// | create_xcframework                          | Package multiple build configs of a library/framework into a single       | jgongo           |
// |                                             | xcframework                                                               |                  |
// | danger                                      | Runs `danger` for the project                                             | KrauseFx         |
// | debug                                       | Print out an overview of the lane context values                          | KrauseFx         |
// | default_platform                            | Defines a default platform to not have to specify the platform            | KrauseFx         |
// | delete_keychain                             | Delete keychains and remove them from the search list                     | Multiple         |
// | deliver                                     | Alias for the `upload_to_app_store` action                                | KrauseFx         |
// | deploygate                                  | Upload a new build to "DeployGate" (https://deploygate.com/ 🔗)           | Multiple         |
// | dotgpg_environment                          | Reads in production secrets set in a dotgpg file and puts them in ENV     | simonlevy5       |
// | download                                    | Download a file from a remote server (e.g. JSON file)                     | KrauseFx         |
// | download_app_privacy_details_from_app_store | Download App Privacy Details from an app in App Store Connect             | igor-makarov     |
// | download_dsyms                              | Download dSYM files from App Store Connect for Bitcode apps               | KrauseFx         |
// | download_from_play_store                    | Download metadata and binaries from Google Play (via _supply_)            | janpio           |
// | dsym_zip                                    | Creates a zipped dSYM in the project root from the .xcarchive             | lmirosevic       |
// | echo                                        | Alias for the `puts` action                                               | KrauseFx         |
// | ensure_bundle_exec                          | Raises an exception if not using `bundle exec` to run fastlane            | rishabhtayal     |
// | ensure_env_vars                             | Raises an exception if the specified env vars are not set                 | revolter         |
// | ensure_git_branch                           | Raises an exception if not on a specific git branch                       | Multiple         |
// | ensure_git_status_clean                     | Raises an exception if there are uncommitted git changes                  | Multiple         |
// | ensure_no_debug_code                        | Ensures the given text is nowhere in the code base                        | KrauseFx         |
// | ensure_xcode_version                        | Ensure the right version of Xcode is used                                 | Multiple         |
// | environment_variable                        | Sets/gets env vars for Fastlane.swift. Don't use in ruby, use `ENV[key]   | taquitos         |
// |                                             | = val`                                                                    |                  |
// | erb                                         | Allows to Generate output files based on ERB templates                    | hjanuschka       |
// | fastlane_version                            | Alias for the `min_fastlane_version` action                               | KrauseFx         |
// | flock                                       | Send a message to a "Flock" (https://flock.com/ 🔗) group                 | Manav            |
// | frame_screenshots                           | Adds device frames around all screenshots (via _frameit_)                 | KrauseFx         |
// | frameit                                     | Alias for the `frame_screenshots` action                                  | KrauseFx         |
// | gcovr                                       | Runs test coverage reports for your Xcode project                         | dtrenz           |
// | get_build_number                            | Get the build number of your project                                      | Liquidsoul       |
// | get_build_number_repository                 | Get the build number from the current repository                          | Multiple         |
// | get_certificates                            | Create new iOS code signing certificates (via _cert_)                     | KrauseFx         |
// | get_github_release                          | This will verify if a given release version is available on GitHub        | Multiple         |
// | get_info_plist_value                        | Returns value from Info.plist of your project as native Ruby data         | kohtenko         |
// |                                             | structures                                                                |                  |
// | get_ipa_info_plist_value                    | Returns a value from Info.plist inside a .ipa file                        | johnboiles       |
// | get_managed_play_store_publishing_rights    | Obtain publishing rights for custom apps on Managed Google Play Store     | janpio           |
// | get_provisioning_profile                    | Generates a provisioning profile, saving it in the current folder (via    | KrauseFx         |
// |                                             | _sigh_)                                                                   |                  |
// | get_push_certificate                        | Ensure a valid push profile is active, creating a new one if needed (via  | KrauseFx         |
// |                                             | _pem_)                                                                    |                  |
// | get_version_number                          | Get the version number of your project                                    | Multiple         |
// | git_add                                     | Directly add the given file or all files                                  | Multiple         |
// | git_branch                                  | Returns the name of the current git branch, possibly as managed by CI     | KrauseFx         |
// |                                             | ENV vars                                                                  |                  |
// | git_commit                                  | Directly commit the given file with the given message                     | KrauseFx         |
// | git_pull                                    | Executes a simple git pull command                                        | Multiple         |
// | git_remote_branch                           | Returns the name of the current git remote default branch                 | SeanMcNeil       |
// | git_submodule_update                        | Executes a git submodule update command                                   | braunico         |
// | git_tag_exists                              | Checks if the git tag with the given name exists in the current repo      | antondomashnev   |
// | github_api                                  | Call a GitHub API endpoint and get the resulting JSON response            | tommeier         |
// | google_play_track_release_names             | Retrieves release names for a Google Play track                           | raldred          |
// | google_play_track_version_codes             | Retrieves version codes for a Google Play track                           | panthomakos      |
// | gradle                                      | All gradle related actions, including building and testing your Android   | Multiple         |
// |                                             | app                                                                       |                  |
// | gym                                         | Alias for the `build_app` action                                          | KrauseFx         |
// | hg_add_tag                                  | This will add a hg tag to the current branch                              | sjrmanning       |
// | hg_commit_version_bump                      | This will commit a version bump to the hg repo                            | sjrmanning       |
// | hg_ensure_clean_status                      | Raises an exception if there are uncommitted hg changes                   | sjrmanning       |
// | hg_push                                     | This will push changes to the remote hg repository                        | sjrmanning       |
// | hipchat                                     | Send a error/success message to "HipChat" (https://www.hipchat.com/ 🔗)   | jingx23          |
// | hockey (DEPRECATED)                         | Refer to "App Center"                                                     | Multiple         |
// |                                             | (https://github.com/Microsoft/fastlane-plugin-appcenter/ 🔗)              |                  |
// | ifttt                                       | Connect to the "IFTTT Maker Channel" (https://ifttt.com/maker 🔗)         | vpolouchkine     |
// | import                                      | Import another Fastfile to use its lanes                                  | KrauseFx         |
// | import_certificate                          | Import certificate from inputfile into a keychain                         | gin0606          |
// | import_from_git                             | Import another Fastfile from a remote git repository to use its lanes     | Multiple         |
// | increment_build_number                      | Increment the build number of your project                                | KrauseFx         |
// | increment_version_number                    | Increment the version number of your project                              | serluca          |
// | install_on_device                           | Installs an .ipa file on a connected iOS-device via usb or wifi           | hjanuschka       |
// | install_provisioning_profile                | Install provisioning profile from path                                    | SofteqDG         |
// | install_xcode_plugin                        | Install an Xcode plugin for the current user                              | Multiple         |
// | installr                                    | Upload a new build to "Installr" (http://installrapp.com/ 🔗)             | scottrhoyt       |
// | ipa (DEPRECATED)                            | Easily build and sign your app using shenzhen                             | joshdholtz       |
// | is_ci                                       | Is the current run being executed on a CI system, like Jenkins or Travis  | KrauseFx         |
// | jazzy                                       | Generate docs using Jazzy                                                 | KrauseFx         |
// | jira                                        | Leave a comment on a Jira ticket                                          | Multiple         |
// | lane_context                                | Access lane context values                                                | KrauseFx         |
// | last_git_commit                             | Return last git commit hash, abbreviated commit hash, commit message and  | ngutman          |
// |                                             | author                                                                    |                  |
// | last_git_tag                                | Get the most recent git tag                                               | Multiple         |
// | latest_testflight_build_number              | Fetches most recent build number from TestFlight                          | daveanderson     |
// | lcov                                        | Generates coverage data using lcov                                        | thiagolioy       |
// | mailgun                                     | Send a success/error message to an email group                            | thiagolioy       |
// | make_changelog_from_jenkins                 | Generate a changelog using the Changes section from the current Jenkins   | mandrizzle       |
// |                                             | build                                                                     |                  |
// | match                                       | Alias for the `sync_code_signing` action                                  | KrauseFx         |
// | match_nuke                                  | Easily nuke your certificate and provisioning profiles (via _match_)      | crazymanish      |
// | min_fastlane_version                        | Verifies the minimum fastlane version required                            | KrauseFx         |
// | modify_services                             | Modifies the services of the app created on Developer Portal              | bhimsenpadalkar  |
// | nexus_upload                                | Upload a file to "Sonatype Nexus platform" (https://www.sonatype.com 🔗)  | Multiple         |
// | notarize                                    | Notarizes a macOS app                                                     | zeplin           |
// | notification                                | Display a macOS notification with custom message and title                | Multiple         |
// | notify (DEPRECATED)                         | Shows a macOS notification - use `notification` instead                   | Multiple         |
// | number_of_commits                           | Return the number of commits in current git branch                        | Multiple         |
// | oclint                                      | Lints implementation files with OCLint                                    | HeEAaD           |
// | onesignal                                   | Create or update a new "OneSignal" (https://onesignal.com/ 🔗)            | Multiple         |
// |                                             | application                                                               |                  |
// | opt_out_crash_reporting (DEPRECATED)        | This will prevent reports from being uploaded when _fastlane_ crashes     | Multiple         |
// | opt_out_usage                               | This will stop uploading the information which actions were run           | KrauseFx         |
// | pem                                         | Alias for the `get_push_certificate` action                               | KrauseFx         |
// | pilot                                       | Alias for the `upload_to_testflight` action                               | KrauseFx         |
// | pod_lib_lint                                | Pod lib lint                                                              | thierryxing      |
// | pod_push                                    | Push a Podspec to Trunk or a private repository                           | squarefrog       |
// | podio_item                                  | Creates or updates an item within your Podio app                          | Multiple         |
// | precheck                                    | Alias for the `check_app_store_metadata` action                           | taquitos         |
// | println                                     | Alias for the `puts` action                                               | KrauseFx         |
// | produce                                     | Alias for the `create_app_online` action                                  | KrauseFx         |
// | prompt                                      | Ask the user for a value or for confirmation                              | KrauseFx         |
// | push_git_tags                               | Push local tags to the remote - this will only push tags                  | vittoriom        |
// | push_to_git_remote                          | Push local changes to the remote branch                                   | lmirosevic       |
// | puts                                        | Prints out the given text                                                 | KrauseFx         |
// | read_podspec                                | Loads a CocoaPods spec as JSON                                            | czechboy0        |
// | recreate_schemes                            | Recreate not shared Xcode project schemes                                 | jerolimov        |
// | register_device                             | Registers a new device to the Apple Dev Portal                            | pvinis           |
// | register_devices                            | Registers new devices to the Apple Dev Portal                             | lmirosevic       |
// | reset_git_repo                              | Resets git repo to a clean state by discarding uncommitted changes        | lmirosevic       |
// | reset_simulator_contents                    | Shutdown and reset running simulators                                     | danramteke       |
// | resign                                      | Codesign an existing ipa file                                             | lmirosevic       |
// | restore_file                                | This action restore your file that was backuped with the `backup_file`    | gin0606          |
// |                                             | action                                                                    |                  |
// | rocket                                      | Outputs ascii-art for a rocket 🚀                                         | Multiple         |
// | rsync                                       | Rsync files from :source to :destination                                  | hjanuschka       |
// | ruby_version                                | Verifies the minimum ruby version required                                | sebastianvarela  |
// | run_tests                                   | Easily run tests of your iOS app (via _scan_)                             | KrauseFx         |
// | s3 (DEPRECATED)                             | Generates a plist file and uploads all to AWS S3                          | joshdholtz       |
// | say                                         | This action speaks the given text out loud                                | KrauseFx         |
// | scan                                        | Alias for the `run_tests` action                                          | KrauseFx         |
// | scp                                         | Transfer files via SCP                                                    | hjanuschka       |
// | screengrab                                  | Alias for the `capture_android_screenshots` action                        | Multiple         |
// | set_build_number_repository                 | Set the build number from the current repository                          | Multiple         |
// | set_changelog                               | Set the changelog for all languages on App Store Connect                  | KrauseFx         |
// | set_github_release                          | This will create a new release on GitHub and upload assets for it         | Multiple         |
// | set_info_plist_value                        | Sets value to Info.plist of your project as native Ruby data structures   | Multiple         |
// | set_pod_key                                 | Sets a value for a key with cocoapods-keys                                | marcelofabri     |
// | setup_ci                                    | Setup the keychain and match to work with CI                              | Multiple         |
// | setup_circle_ci                             | Setup the keychain and match to work with CircleCI                        | dantoml          |
// | setup_jenkins                               | Setup xcodebuild, gym and scan for easier Jenkins integration             | bartoszj         |
// | setup_travis                                | Setup the keychain and match to work with Travis CI                       | KrauseFx         |
// | sh                                          | Runs a shell command                                                      | KrauseFx         |
// | sigh                                        | Alias for the `get_provisioning_profile` action                           | KrauseFx         |
// | skip_docs                                   | Skip the creation of the fastlane/README.md file when running fastlane    | KrauseFx         |
// | slack                                       | Send a success/error message to your "Slack" (https://slack.com 🔗) group | KrauseFx         |
// | slather                                     | Use slather to generate a code coverage report                            | mattdelves       |
// | snapshot                                    | Alias for the `capture_ios_screenshots` action                            | KrauseFx         |
// | sonar                                       | Invokes sonar-scanner to programmatically run SonarQube analysis          | c_gretzki        |
// | sourcedocs                                  | Generate docs using SourceDocs                                            | Kukurijek        |
// | spaceship_logs                              | Find, print, and copy Spaceship logs                                      | joshdholtz       |
// | spaceship_stats                             | Print out Spaceship stats from this session (number of request to each    | joshdholtz       |
// |                                             | domain)                                                                   |                  |
// | splunkmint                                  | Upload dSYM file to "Splunk MINT" (https://mint.splunk.com/ 🔗)           | xfreebird        |
// | spm                                         | Runs Swift Package Manager on your project                                | Multiple         |
// | ssh                                         | Allows remote command execution using ssh                                 | hjanuschka       |
// | supply                                      | Alias for the `upload_to_play_store` action                               | KrauseFx         |
// | swiftlint                                   | Run swift code validation using SwiftLint                                 | KrauseFx         |
// | sync_code_signing                           | Easily sync your certificates and profiles across your team (via          | KrauseFx         |
// |                                             | _match_)                                                                  |                  |
// | team_id                                     | Specify the Team ID you want to use for the Apple Developer Portal        | KrauseFx         |
// | team_name                                   | Set a team to use by its name                                             | KrauseFx         |
// | testfairy                                   | Upload a new build to "TestFairy" (https://www.testfairy.com/ 🔗)         | Multiple         |
// | testflight                                  | Alias for the `upload_to_testflight` action                               | KrauseFx         |
// | trainer                                     | Convert the Xcode plist log to a JUnit report                             | KrauseFx         |
// | tryouts                                     | Upload a new build to "Tryouts" (https://tryouts.io/ 🔗)                  | alicertel        |
// | twitter                                     | Post a tweet on "Twitter.com" (https://twitter.com 🔗)                    | hjanuschka       |
// | typetalk                                    | Post a message to "Typetalk" (https://www.typetalk.com/ 🔗)               | Nulab Inc.       |
// | unlock_keychain                             | Unlock a keychain                                                         | xfreebird        |
// | update_app_group_identifiers                | This action changes the app group identifiers in the entitlements file    | mathiasAichinger |
// | update_app_identifier                       | Update the project's bundle identifier                                    | Multiple         |
// | update_code_signing_settings                | Configures Xcode's Codesigning options                                    | Multiple         |
// | update_fastlane                             | Makes sure fastlane-tools are up-to-date when running fastlane            | Multiple         |
// | update_icloud_container_identifiers         | This action changes the iCloud container identifiers in the entitlements  | JamesKuang       |
// |                                             | file                                                                      |                  |
// | update_info_plist                           | Update a Info.plist file with bundle identifier and display name          | tobiasstrebitzer |
// | update_keychain_access_groups               | This action changes the keychain access groups in the entitlements file   | yutae            |
// | update_plist                                | Update a plist file                                                       | Multiple         |
// | update_project_code_signing (DEPRECATED)    | Updated code signing settings from 'Automatic' to a specific profile      | KrauseFx         |
// | update_project_provisioning                 | Update projects code signing settings from your provisioning profile      | Multiple         |
// | update_project_team                         | Update Xcode Development Team ID                                          | lgaches          |
// | update_urban_airship_configuration          | Set "Urban Airship" (https://www.urbanairship.com/ 🔗) plist              | kcharwood        |
// |                                             | configuration values                                                      |                  |
// | update_url_schemes                          | Updates the URL schemes in the given Info.plist                           | kmikael          |
// | upload_app_privacy_details_to_app_store     | Upload App Privacy Details for an app in App Store Connect                | joshdholtz       |
// | upload_symbols_to_crashlytics               | Upload dSYM symbolication files to Crashlytics                            | KrauseFx         |
// | upload_symbols_to_sentry (DEPRECATED)       | Upload dSYM symbolication files to Sentry                                 | joshdholtz       |
// | upload_to_app_store                         | Upload metadata and binary to App Store Connect (via _deliver_)           | KrauseFx         |
// | upload_to_play_store                        | Upload metadata, screenshots and binaries to Google Play (via _supply_)   | KrauseFx         |
// | upload_to_play_store_internal_app_sharing   | Upload binaries to Google Play Internal App Sharing (via _supply_)        | andrewhavens     |
// | upload_to_testflight                        | Upload new binary to App Store Connect for TestFlight beta testing (via   | KrauseFx         |
// |                                             | _pilot_)                                                                  |                  |
// | validate_play_store_json_key                | Validate that the Google Play Store `json_key` works                      | janpio           |
// | verify_build                                | Able to verify various settings in ipa file                               | CodeReaper       |
// | verify_pod_keys                             | Verifies all keys referenced from the Podfile are non-empty               | ashfurrow        |
// | verify_xcode                                | Verifies that the Xcode installation is properly signed by Apple          | KrauseFx         |
// | version_bump_podspec                        | Increment or set the version in a podspec file                            | Multiple         |
// | version_get_podspec                         | Receive the version number from a podspec file                            | Multiple         |
// | xcarchive                                   | Archives the project using `xcodebuild`                                   | dtrenz           |
// | xcbuild                                     | Builds the project using `xcodebuild`                                     | dtrenz           |
// | xcclean                                     | Cleans the project using `xcodebuild`                                     | dtrenz           |
// | xcexport                                    | Exports the project using `xcodebuild`                                    | dtrenz           |
// | xcode_install (DEPRECATED)                  | Make sure a certain version of Xcode is installed                         | Krausefx         |
// | xcode_select                                | Change the xcode-path to use. Useful for beta versions of Xcode           | dtrenz           |
// | xcode_server_get_assets                     | Downloads Xcode Bot assets like the `.xcarchive` and logs                 | czechboy0        |
// | xcodebuild                                  | Use the `xcodebuild` command to build and sign your app                   | dtrenz           |
// | xcodes                                      | Make sure a certain version of Xcode is installed, installing it only if  | rogerluan        |
// |                                             | needed                                                                    |                  |
// | xcov                                        | Nice code coverage reports without hassle                                 | nakiostudio      |
// | xctest                                      | Runs tests on the given simulator                                         | dtrenz           |
// | xctool                                      | Run tests using xctool                                                    | KrauseFx         |
// | xcversion (DEPRECATED)                      | Select an Xcode to use by version specifier                               | Multiple         |
// | zip                                         | Compress a file or folder to a zip                                        | KrauseFx         |
// +---------------------------------------------+---------------------------------------------------------------------------+------------------+
//   Total of 237 actions
