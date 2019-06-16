<p align="center">
Dedicate to @Daisy for our friendship and her kindly support.<br>
</p>

# Open in VSCode
Open in VSCode is an Alfred Workflow for opening VSCode with one command.

## Installation
Download [here](https://raw.githubusercontent.com/willbchang/alfred-open-in-vscode/master/Open%20in%20VSCode.alfredworkflow).

## Usage
<kbd>cmd</kbd> + <kbd>cmd</kbd>
- [x] Launch VSCode.
- [x] Bring VSCode to the front window.
- [x] Open selected file(s)/folder(s) from Finder.
- [x] Open selected file/folder from Alfred File Browser.
  1. **Enable Quick Search Mode** in `Features -> File Action`.
  2. Launch Alfred and press <kbd>spacebar</kbd> or input a single quote.
  3. Move the highlight block to the desitination folder.
  4. *Notice*: if you enabled `Advanced -> History` and browse file with it, you should use <kbd>tab</kbd> or <kbd>←</kbd> or <kbd>→</kbd> to avoid Alfred's default selection.
  5. <kbd>cmd</kbd> + <kbd>cmd</kbd>
  

### Change Code Editor
1. Open alfred preferences
2. Find Open in VSCode workflow
3. Open `Run Script` object
4. Replace `Visual\ Studio\ Code` with `YOUR\ APPLICATION\ NAME`.

## Contribution
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](LICENSE)
