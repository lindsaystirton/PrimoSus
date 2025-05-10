#!/bin/bash

# primosus.sh - Sussex University Library Search from Terminal (Version 0.3)
# Author: Lindsay Stirton
# License: GNU Public License

# Help message function
display_help() {
    echo "Usage: primosus [options] <search term>"
    echo "Options:"
    echo "  -t, --title        Search by title"
    echo "  -a, --author       Search by author"
    echo "  -s, --subject      Search by subject"
    echo "  -k, --keyword      General keyword search (default)"
    echo "  -i, --item         Search by item type (book, article, journal, thesis)"
    echo "  -h, --help         Display this help message"
}

# Base URL for Sussex Primo search
base_url="https://sussex.primo.exlibrisgroup.com/discovery/search?"
fixed_params="tab=MyInst_and_CI_no_BLDS&search_scope=MyInst_and_CI_no_BLDS&sortby=rank&vid=44SUS_INST:44SUS_VU1&lang=en&mode=advanced&offset=0"

# Initialize variables
author=""
title=""
subject=""
keyword=""
item=""

# Parsing command-line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -t|--title)
            title="$2"
            shift 2
            ;;
        -a|--author)
            author="$2"
            shift 2
            ;;
        -s|--subject)
            subject="$2"
            shift 2
            ;;
        -k|--keyword)
            keyword="$2"
            shift 2
            ;;
        -i|--item)
            item="$2"
            shift 2
            ;;
        -h|--help)
            display_help
            exit 0
            ;;
        *)
            echo "Invalid option: $1"
            display_help
            exit 1
            ;;
    esac
done

# Construct the query string
query_params=""
if [[ -n "$author" ]]; then
    query_params+="query=creator,contains,${author// /%20},AND&"
fi
if [[ -n "$title" ]]; then
    query_params+="query=title,contains,${title// /%20},AND&"
fi
if [[ -n "$subject" ]]; then
    query_params+="query=subject,contains,${subject// /%20},AND&"
fi
if [[ -n "$keyword" ]]; then
    query_params+="query=any,contains,${keyword// /%20},AND&"
fi

# Item type filter
if [[ -n "$item" ]]; then
    case "$item" in
        book) query_params+="facet=rtype,exact,books&" ;;
        article) query_params+="facet=rtype,exact,articles&" ;;
        journal) query_params+="facet=rtype,exact,journals&" ;;
        thesis) query_params+="facet=rtype,exact,theses&" ;;
        *) echo "Invalid item type: $item" ; exit 1 ;;
    esac
fi

# Construct the final URL
full_url="${base_url}${query_params}${fixed_params}"

# Open the URL in the default browser
echo "Searching Sussex Library for $* ..."
open "$full_url"
