# What
- Provides template creation in the form of Emmet

---
# How
- Not all Emmet symbols can be used in bash (like > and ^)
    - Thus, substitutes are used, but it's still similar to Emmet

## Syntax
### dir,
- Means create `dir` and `cd` into it

### /
- Means `cd ..`

### other...
- For creating files, you must specify a file type. You can create files based off of templates if the name matches something in the `templates_dir` location; this is set to ~/Templates/
- For creating directories, omit any extension like for files
- To create multiple files and/or directories, separate them with a space

## Examples

```main.sh dir1,dir2 hello.txt/otherdir```
![File System](https://i.imgur.com/DB8EPV8.png)

`main.sh hello.txt dir1, dir2 dir3`
![File System](https://i.imgur.com/GgP1A8e.png)

---
# Why
- Because
