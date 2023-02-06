source ~/.zprofile

selected_brand="Resource2"

# 1- Replace the Fonts
cp -rf ../../Brands/$selected_brand/Fonts/*  ../Resources/Fonts

# 2- Replace the Images
cp -rf ../../Brands/$selected_brand/Images/*  ../Resources/Images

# 3- Run font_post_script_reader.sh
./font_post_script_reader.sh
