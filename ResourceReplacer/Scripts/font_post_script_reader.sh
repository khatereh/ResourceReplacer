
font_regular_path='../Resources/Fonts/Font-Regular.ttf'
font_light_path='../Resources/Fonts/Font-Light.ttf'
font_bold_path='../Resources/Fonts/Font-Bold.ttf'
info_plist_path="../Info.plist"

# Read font postscript with fc-scan
read_font_post_script() {
    font_path="$1"
    output=$(fc-scan --format "%{postscriptname}" "$font_path")
    echo "$output"
}

# Read fonts postscript
regular_font_post_script=$(read_font_post_script $font_regular_path)
light_font_post_script=$(read_font_post_script $font_light_path)
bold_font_post_script=$(read_font_post_script $font_bold_path)

# Set the "FontsPostScript" dictionary in the Info.plist
/usr/libexec/PlistBuddy -c "Set :FontsPostScript:regular $regular_font_post_script" $info_plist_path
/usr/libexec/PlistBuddy -c "Set :FontsPostScript:light $light_font_post_script" $info_plist_path
/usr/libexec/PlistBuddy -c "Set :FontsPostScript:bold $bold_font_post_script" $info_plist_path
