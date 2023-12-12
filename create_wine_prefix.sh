echo "Enter the absolute path of the folder you want to create the prefix in:"
read prefix_folder
echo "Enter the name of the prefix:"
read prefix_name
echo "Enter the prefix architecture: (win32 or win64)"
read prefix_arch

WINEPREFIX="/$prefix_folder/$prefix_name/" WINEARCH="$prefix_arch" winecfg
