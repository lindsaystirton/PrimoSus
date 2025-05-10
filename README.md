# PrimoSus

**PrimoSus** is a command-line utility to search the University of Sussex Library catalog directly from the terminal.

## Features

* Search by title, author, subject, keyword, or item type (book, article, journal, thesis).
* Supports multiple search terms combined using the advanced search page.
* Easy integration with the terminal for quick library lookups.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/lindsaystirton/PrimoSus.git
   ```
2. Make the script executable:

   ```bash
   chmod +x primosus.sh
   ```
3. Move it to your PATH:

   ```bash
   sudo mv primosus.sh /usr/local/bin/primosus
   ```

### Man Page Installation

1. Move the man page file to a system directory for man pages:

   ```bash
   sudo mv primosus.1 /usr/local/share/man/man1/
   ```
2. Update the man database:

   ```bash
   sudo mandb
   ```
3. You can now view the man page using:

   ```bash
   man primosus
   ```

## Usage

```bash
primosus [OPTIONS] <search term>
```

### Options:

* `-t`, `--title`       : Search by title.
* `-a`, `--author`      : Search by author.
* `-s`, `--subject`     : Search by subject.
* `-k`, `--keyword`     : General keyword search (default).
* `-i`, `--item`        : Specify item type (book, article, journal, thesis).
* `-h`, `--help`        : Display help message.

### Examples:

* Search for articles by Lindsay Stirton with "Basic Income" in the title:

  ```bash
  primosus -a "Lindsay Stirton" -t "Basic Income" -i book
  ```

## License

This project is licensed under the GNU Public License.
