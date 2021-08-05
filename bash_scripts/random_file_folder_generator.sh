#!/bin/bash

# random_file_folder_generator : creates empty files or folders named according to current system date and time.
# ct : current system time
# cd : current system date
# generated_name : generated name of file or folder

cd=$(date +"%F")
ct=$(date +"%T")
generated_name=$ct.$cd

echo "File or folder?"
echo "Use only lowercase or uppercase throughout."
read answer

case $answer in
     "FOLDER") mkdir "${generated_name}"
               echo "An empty directory named "${generated_name}" has been created!";;
     "folder") mkdir "${generated_name}"
               echo "An empty folder named "${generated_name}" has been created!";;
     "FILE") touch "${generated_name}"
               echo "An empty file named "${generated_name}" has been created!";;
     "file") touch "${generated_name}"
               echo "An empty file named "${generated_name}" has been created!";;
     *) echo "Invalid input!"
esac
