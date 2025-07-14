# MPADTE: Muhamix Processor Architecture Detector Tool Executor

MPADTE is the official Interpreter for [MPADT](https://github.com/Muhamix/MPADT), a Domain-Specifc Language made to detect CPU architecture and run corresponding assembly files.

---

## Install

### Linux/MAC

clone with git:

```bash
git clone https://github.com/Muhamix/MPADTE.git
```

Run the installation bash script:

```
sudo bash ~/MPADTE/install.sh
```

### Windows

clone with git:

```bash
git clone https://github/com/Muhamix/MPADTE.git
```

Depending on whether you use Powershell 5+ or not, run run powershell as admin and run this:

#### PowerShell

```ps1
& "$HOME/MPADTE/install.ps1"
```

#### Batch

```bat
%USERPROFILE%\MPADTE\install.bat
```

---

## Run

To run MPADTE, you just need to create a [MPADT](https://github.com/Muhamix/MPADTE) file then run it like this:

```bash
mpadte <filename>.padl
```

---

## Contributions

Contributions are always welcome, create an issue or pull request for bugs, features, or ideas

---

## License

[MIT](https://mit-license.org/)
