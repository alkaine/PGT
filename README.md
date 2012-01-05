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
* Create application: -c (default: false)
* Project path: -p (default: current path)
* Target: -t (default: first connected device, values: "device" | "emulator" | device_name)
* Build application: -b (default: false)
* Deploy application: -d (default: false)
* Run application: -r (default: false)
* Logs: -b (default: "phonegap", values: "debug")

# Examples #

### Create application ###
<code>pgt -c</code>

### Build application ###
<code>pgt -b</code>

### Deploy application on the first connected device ###
<code>pgt -dt "device"</code>

### Run application on the first connected device ###
<code>pgt -rt "device"</code>

### Advanced ###
<code>pgt bdr -t "myemulator" -p "my/project/path/"</code>