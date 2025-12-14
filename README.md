A CLI Tool and Template for Creating Beautiful PDFs from Markdown Notes

## 1. install md-to-pdf

```bash
npm i -g md-to-pdf
```

## 2. 'mdnote' command registration

```bash
chmod +x mdnote.sh
sudo ln -s "$(pwd)/mdnote.sh" /usr/local/bin/mdnote
```

## 3. execution

```bash
mdnote my-new-note
```

## Note

If the command doesn’t show up in tab completion after creating the symbolic link, refresh shell’s command cache:

```bash
hash -r    # for Bash
rehash     # for Zsh
```
