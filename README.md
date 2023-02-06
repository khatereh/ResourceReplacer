
  

# ResourceReplacer

  

 
ResourceReplacer is an iOS app written in Swift which give solution for managing the resources in WhiteLabel apps. 
For example reading the fonts postscript automatically with a bash script.

  

How it works?

  

- The app has a folder named **Brands**, located in the root of the project *(ResourceReplacer/Brands)*, which contains resources for each brand.

  

  

- The **configurator.sh** script is the parent script that has all the necessary steps for configuring branding.
In order to make it run, simply add it to Xcode Scheme pre-action build.

  

  

- The **font_post_script_reader.sh** script reads fonts Postscript name and sets them in the **Info.plist**. To use this script, you must add the font names to the **"Fonts provided by application"** Array in the Info.plist and create a custom dictionary called **"FontsPostScript**" with the keys associated for each font.

- Note: if you faced  `"fc-scan command not found"` usually means that the `fontconfig` package, which provides the `fc-scan` command, is not installed on your system.
To install `fontconfig` run the following command in your terminal:
`brew install fontconfig`.

  

- The **FontPostScript.Swift** file reads the fonts Postscript name in the Info.plist and uses them in the project.

  

  

## Testing the project with different resources

  

To test the project, simply change the **selected_brand** in *configurator.sh* value and the app will use the corresponding resources to configure the branding.
