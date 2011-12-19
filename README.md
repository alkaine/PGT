# Requires #
* Android Tools [Home page](http://tools.android.com/)
* Apache Ant [Home page](http://ant.apache.org/)
* CallbackAndroid [GitHub](https://github.com/callback/callback-android)

# Installation #
## Configure the callbackandroid path ##
Add an alias to the tools folder:
<code>
  alias pgt="~/Tools/PhoneGap-Tools/application"
</code>  
## Link the phonegap javascript file ##
After create your project (pgt -c), you need to edit your {PROJECT_PATH}/.phonegap/config and the following line:
PHONEGAP_PATH=assets/javascript/lib/
(of course, you'll have to change that)

# Options #
### -p ###
  default: null
Project path

### -t ###
  default: null
Set to "device" to build on device.
Set to "emulator" to build on emulator.
Or use an available device.

### -c ###
  default: Off
Create application

### -b ### 
  default: Off
Build application

### -d ### 
  default: Off
Deploy application

### -r ### 
  default: Off
Run application

### -l ### 
  default: phonegap
Only show the phonegap generated logs.
Set to "debug" to see all the logs.
  
# Usage #

### Create application ###
<code>pgt -c</code>

### Build, install and application ###
<code>pgt -bdr</code>

### Run application on "myemulator" ###
<code>pgt -rt "myemulator" -p "my/project/path/"</code>