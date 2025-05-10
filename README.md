PrimoSus

PrimoSus is a command-line utility to search the University of Sussex Library catalog directly from the terminal.
Features

Search by title, author, subject, keyword, or item type (book, article, journal, thesis).
Supports multiple search terms combined using the advanced search page.
Easy integration with the terminal for quick library lookups.
Installation

Clone the repository:
git clone https://github.com/lindsaystirton/PrimoSus.git
Make the script executable:
chmod +x primosus.sh
Move it to your PATH:
sudo mv primosus.sh /usr/local/bin/primosus
Man Page Installation
Move the man page file to a system directory for man pages:
sudo mv primosus.1 /usr/local/share/man/man1/
Update the man database:
sudo mandb
You can now view the man page using:
man primosus
Usage

primosus [OPTIONS] <search term>
Options:
-t, --title : Search by title.
-a, --author : Search by author.
-s, --subject : Search by subject.
-k, --keyword : General keyword search (default).
-i, --item : Specify item type (book, article, journal, thesis).
-h, --help : Display help message.
Examples:
Search for articles by Lindsay Stirton with "Basic Income" in the title:
primosus -a "Lindsay Stirton" -t "Basic Income" -i article
License

This project is licensed under the GNU Public License.