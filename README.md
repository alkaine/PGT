# PGT (PhoneGapTools) #

PGT is a tool created to simplify and accelerate the creating/building/deploying/running of an Android based application.

# Requirement #
* Android Tools [Home page](http://tools.android.com/)
* Apache Ant [Home page](http://ant.apache.org/)
* CallbackAndroid [GitHub](https://github.com/callback/callback-android)

# Installation #
Add an alias to the PGT folder:
<code>alias pgt="~/Tools/PhoneGap-Tools/pgt"</code>
<br>
Change the <code>CALLBACK_ANDROID_PATH</code> in the config file

# Options #
* -path : specify the project path for external calls
* -target : specify the target device(default: first connected device, available: "device", "emulator", @"device_name")
* -help : activate the help
* -log : specify the log(default: "debug", available: "phonegap")
* -no-log : desactivate the logs
* -no-phonegap : not a phongap project (pgt should be used in the application folder)
* -activity : specify the application main activity (default: name of the parent folder)
* -package : specify the application package (default: com.activity_tolowercase | com.phonegap.activity_tolowercase if it's a phonegapproject)
* -apk : specify the application file apk generated
* -phonegap-version : specify the phonegap version (default: 1.3.0)
* -builder : specify the custom builder (default: false)
* -www-folder : specify the folder used for the assets (default: false)

# Examples #

### Create application ###
<code>pgt create</code>

### Configure application ###
<code>pgt config</code>

### Save options ###
<code>pgt set</code>
<code>pgt set -target "my_emulator" -package "my_package"</code>

### Build application ###
<code>pgt build</code>

### Compil application ###
<code>pgt compil</code>

### Clean the application (delete all bin and gen files) ###
<code>pgt clean</code>

### Deploy application ###
<code>pgt deploy</code>

### Run application ###
<code>pgt run</code>

### Build, compil, deploy and run ###
<code>pgt debug</code>

### Stop the activity ###
<code>pgt stop</code>

### Uninstall ###
<code>pgt uninstall</code>

### Listing available devices ###
<code>pgt devices</code>

### Restart adb bridge ###
<code>pgt devices restart</code>

### Stop adb bridge ###
<code>pgt devices stop</code>

### Start adb bridge ###
<code>pgt devices start</code>

### Advanced ###
<code>pgt debug -target "myemulator" -path "my/application/path/" -apk "my/apk/path"</code>