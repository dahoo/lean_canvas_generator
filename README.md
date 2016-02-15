# Lean Canvas Generator
Generate an HTML Lean Canvas from versionable Markdown.  
The CSS is based on https://github.com/theInspiredOnes/bmc-generator.

## Usage
Write your canvas using the template provided in `canvas.md`.

Install the gems:
```
bundle install
```

Then run
```
ruby lean_canvas_generator.rb <file>.md
```

You'll find your canvas in `<file>.html`.

### Automatic generation
You can automatically rebuild the canvas on a change in any Markdown file using guard:

```
bundle exec guard
```

This is especially useful when using an auto-refreshing browser like the live mode of [browser-plus](https://atom.io/packages/browser-plus) in Atom.
