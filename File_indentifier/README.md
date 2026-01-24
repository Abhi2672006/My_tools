# File Type Identifier

A lightweight Bash utility designed to enhance security and organization by verifying if a file's extension accurately reflects its content. It achieves this by analyzing the file's magic number (unique hexadecimal file signature).
 Features

    Signature Verification: Checks common file types including JPG, PNG, PDF, ZIP, EXE, and ELF.

    Security Focused: Detects mismatched or disguised extensions often used in malware or phishing.

    User Friendly: Features color-coded terminal output for instant status recognition.

    Simple Logic: Pure Bash implementation with no heavy dependencies.

 Usage

    Run the script:
    Bash

    ./file_type_identifier.sh
    
    Input: Enter the filename when prompted.

    Output: The script will display:

        The raw hex signature of the file.

        A validation message indicating if the extension matches the detected type.

# Installation & Git Setup

If you are adding this to a repository, follow these steps:
1. Save the README

Create the file and paste the content:
```Bash

nano README.md
```
(Press Ctrl+O, then Enter to save, and Ctrl+X to exit)
2. Commit and Push
```Bash

cd ~/path/to/my-tools
git add file-type-identifier/README.md
git commit -m "Add README for file type identifier project"
git push
```

# NOte 

There are two practice files named **fake.txt** and **prac.txt** you can use them you practice.

 Author

Abhishek Kumar
