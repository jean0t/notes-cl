# notes-cl

🎉 A simple, badass CLI for managing your notes — 100% Common Lisp power

---

## Features

* 📝 Add, list, and delete notes in JSON files
* ⚡ Super lightweight and fast
* 🛠 Built with **Common Lisp**, **Jonathan** for JSON, and **UIOP**
* 💻 Works right from your terminal — no GUI distractions

---

## Installation

Clone the repo:

```bash
git clone https://github.com/jean0t/notes-cl.git
cd notes-cl
```

Make sure you have **SBCL** and **Quicklisp** installed.

---

## Usage

### Run with SBCL (or simply call the binary already built in /dist)

```bash
sbcl --load ~/quicklisp/setup.lisp \
     --eval '(ql:quickload :notes-cl)' \
     --eval '(notes-cl.app:main)' \
     -- list
```

### Examples

Add a note:

```bash
./notes-cl add "Buy milk" "Remember to also get bread"
```

List all notes:

```bash
./notes-cl list
```

Delete a note:

```bash
./notes-cl delete 1
```

---

## How it works

1. Notes are stored in `data/notes.json`
2. CLI parses your commands and interacts with the JSON file
3. Uses **keywords** for easy access: `(getf note :title)`

---

## Why notes-cl rocks

* 🚀 Fast startup and minimal setup
* 🎯 No bloated frameworks, just raw Lisp magic
* 🤓 Great for Lisp nerds who like keeping things simple

---

## License

MIT License — do whatever you want with it.
