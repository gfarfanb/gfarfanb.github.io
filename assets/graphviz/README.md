
## Graphviz Notes

### Graphviz installation

#### Windows approach

[Download Graphviz distribution](http://graphviz.org/Download_windows.php) (ZIP is preferable). 
Then unpackage ZIP and copy the home distribution path (e.g. `C:\dist\graphviz-2.38`). 
Append to `Path` environment variable the home distribution path plus `bin` (e.g. `C:\dist\graphviz-2.38\bin`);
you can create a `GRAPHVIZ_HOME` variable with home distribution and update `Path` with `%Path%;%GRAPHVIZ_HOME%\bin`.

### Generate graph

You can generate SVG (or any other [supported format](http://www.graphviz.org/content/output-formats)) 
file from DOT file using the following command:
```bash
dot -Tsvg dev-snapshot.dot -o ../img/dev-snapshot.svg
```
*[:link:](https://stackoverflow.com/questions/1494492/graphviz-how-to-go-from-dot-to-a-graph#1494495)*

### Scripts

If you want to compile all DOT files (`assets/graphviz/**/*.dot`) to SVG files (`assets/img/**/*.svg`)
 you can use the following command:
```bash
_scripts/compiledots.rb
```

## License

[![CC-BY-SA](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
 