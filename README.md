# Requires #
* Android Tools [Home page](http://tools.android.com/)
* Apache Ant [Home page](http://ant.apache.org/)
* CallbackAndroid [GitHub](https://github.com/callback/callback-android)

# Installation #
## Configure the callbackandroid path ##
Add an alias to the tools folder:
<code>alias pgt="~/Tools/PhoneGap-Tools/application"</code>  
## Link the phonegap javascript file ##
After create your project (<code>pgt -c</code>), you need to edit your <code>{PROJECT_PATH}/.phonegap/config</code> and the following line:<br>
<code>PHONEGAP_PATH=assets/javascript/lib/</code><br>
(of course, you'll have to change that)

# Options #
* Project path: -p (default: current path)
* Target: -t (default: first connected device, values: "device" | "emulator" | device_name)
* Create application: -c (default: false)
* Build application: -b (default: false)
* Deploy application: -d (default: false)
* Run application: -r (default: false)
* Logs: -b (default: "phonegap", values: "debug")

# Usage #

### Create application ###
<code>pgt -c</code>

### Build, install and application ###
<code>pgt -bdr</code>

### Run application on "myemulator" ###
<code>pgt -rt "myemulator" -p "my/project/path/"</code>