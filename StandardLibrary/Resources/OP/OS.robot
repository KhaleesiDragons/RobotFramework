*** Settings ***
Library  OperatingSystem
Library  Selenium2Library
*** Variables ***
${output_directory} =  C://Test_directory
${derictory_1} =  folder1
${derictory_2} =  folder2

${file1} =  First file.txt
${file2} =  Second file.txt
*** Keywords ***
Create the Base directory
    create directory  ${output_directory}
    should exist  ${output_directory}

Create Directory 1
    ${directory_path} =  join path  ${output_directory}  ${derictory_1}
    create directory  ${directory_path}
    should exist  ${directory_path}

Create Directory 2
    ${directory_path} =  join path  ${output_directory}  ${derictory_2}
    create directory  ${directory_path}
    should exist  ${directory_path}

Create file 1
    ${file_path} =  join path  ${output_directory}  ${derictory_1}  ${file1}
    create file  ${file_path}  Justin Bibber is the best singer :)
    should exist  ${file_path}
Create file 2
    ${file_path} =  join path  ${output_directory}  ${derictory_2}  ${file2}
    create file  ${file_path}  I hate Justin Bibber :)
    should exist  ${file_path}

Move to base directory
    ${source_path} =  join path  ${output_directory}  ${derictory_1}  ${file1}
    ${target_path} =  join path  ${output_directory}  ${file1}

    move file  ${source_path}  ${target_path}
    should exist  ${target_path}
    should not exist  ${source_path}

Remove old derictory
    ${empty_folder} =  join path  ${output_directory}  ${derictory_1}
    remove directory  ${empty_folder}
    should not exist  ${empty_folder}