# My Security Tools Suite

Collection of offensive security tools for penetration testing and malware analysis.

## 🛠️ Tools Included

### 1. YARA Malware Scanner
- **Description:** Malware detection system
- **Tech Stack:** YARA rules ,bash
- **Key Features:**
  - Custom YARA rule detection
  - Automated directory scanning
  - Malware pattern identification
  - Multi-file type support
- **Usage:**
- ``` bash
  cd YARA_Malware_scanner
  chmod +x main.sh
  ./main.sh
  ```

- **Results:** Detects ransomware, trojans, webshells

### 2. BASH Port Scanner  
- **Description:** Lightweight network reconnaissance tool
- **Tech Stack:** Bash, TCP/IP
- **Key Features:**
- Fast TCP port scanning
- Clean formatted output
- No heavy dependencies
- **Usage:**
``` bash
chmod +x bash-port-scanner.sh
./bash-port-scanner.sh <target-ip>
```


### 3. FILE Type Identifier
- **Description:** Binary file analysis and verification
- **Tech Stack:** Bash
- **Key Features:**
- Magic number analysis
- Extension verification
- Malware analysis support
- Human-readable output
- **Usage:**
- ``` bash
  ./file_type_identifier.sh
  Input: Enter the filename when prompted.
  Output: The script will display:

    The raw hex signature of the file.

    A validation message indicating if the extension matches the detected type.
  ```
  
