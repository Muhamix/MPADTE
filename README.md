# MNL: MultiNixLang Interpreter

**MNL** is the official interpreter for **MultiNixLang (.mnl)**, a minimal scripting language built for **MultiNixOS**.  
Its sole purpose is to **detect the current CPU architecture** and **run the matching external binary or assembly file**.

---

## What It Does

The `mnl` tool:
- Parses `.mnl` files (MultiNixLang scripts)
- Detects the system’s current CPU architecture (e.g., `x86`, `arm`, `riscv`)
- Executes the appropriate binary or script based on the `.mnl` logic

This allows for architecture-aware booting, setup, or execution across platforms — **without bloating the kernel or requiring multiple launch scripts**.

---

## File Format

- `.mnl` files are plain  text scripts
- They contain conditional logic based on the detected architecture
- Each block tells the interpreter which binary to run for that architecture

---

## Installation

Install with git:

```bash
git clone https://github.com/MultiNix/MNL.git
```
---

## Usage

```bash
mnl {filename}.mnl
```

Excluding the brackets of course. More CPU architectures may becone supported soon.

---

## Architecture detection

MNL currently supports detection of:

- x86
- x86_64
- arm
- riscv
- mips

---

## License

[MIT](https://mit-license.org/)
