# PrimoSus

PrimoSus is a command-line utility to search the University of Sussex library catalogue directly from the terminal. It is designed for users who frequently use the library and prefer working in a Unix environment.

## Features

* Search by title, author, subject, keyword, or item type (book, article, journal, thesis)
* Open results directly in the system's default web browser
* Simple and efficient interface

## Installation

Clone the repository from GitHub:

```
git clone https://github.com/lindsaystirton/PrimoSus.git
```

Make the script executable:

```
chmod +x primosus.sh
```

Add PrimoSus to your PATH for easier access:

```
echo 'export PATH="$PATH:~/Scripts/PrimoSus"' >> ~/.zshrc
source ~/.zshrc
```

## Usage

```
primosus [options] <search term>
```

### Options:

* `-t`, `--title`    : Search by title
* `-a`, `--author`   : Search by author
* `-s`, `--subject`  : Search by subject
* `-k`, `--keyword`  : General keyword search (default)
* `-i`, `--item`     : Search by item type (book, article, journal, thesis)
* `-h`, `--help`     : Display help message

## Examples

Search for books by Jeremy Webber related to the constitution:

```
primosus -a "Jeremy Webber" -t "Constitution" -i book
```

Search for articles by Lindsay Stirton on public law:

```
primosus -a "Lindsay Stirton" -i article
```

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue to discuss new features or improvements.

## License

Licensed under the GNU General Public License v3.0. See the LICENSE file for more details.
