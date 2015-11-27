sudo usermod --password $(echo pass | openssl passwd -1 -stdin) root
