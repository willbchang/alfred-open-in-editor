<p align="center">
Dedicated to @Daisy for our friendship and her kindly support.<br>
</p>

# Open in VSCode
Open in VSCode is an Alfred Workflow for opening VSCode commands with one hotkey.

## Installation
1. Download [here](https://raw.githubusercontent.com/willbchang/alfred-open-in-vscode/master/Open%20in%20VSCode.alfredworkflow).
2. Double click `Open in VSCode.alfredworkflow` to install.
3. Click `Import` Button.
4. Double click `Hotkey` and set your shortcut.(I'm using <kbd>alt</kbd> + <kbd>v</kbd>).

## Usage
<kbd>alt</kbd> + <kbd>v</kbd>(You can config your favorite shortcut)
- Launch VSCode if VSCode isn't active.
- Bring VSCode to the front window if VSCode is active.
- Open selected file(s)/folder(s) from Finder.
- Open selected file/folder from Alfred File Browser.
  1. **Enable Quick Search Mode** in `Features -> File Action`.
  2. Launch Alfred and press <kbd>spacebar</kbd> or input a single quote.
  3. Move the highlight block to the desitination folder.
  4. *Notice*: if you enabled `Advanced -> History` and browse file with it, you should use <kbd>tab</kbd> or <kbd>←</kbd> or <kbd>→</kbd> to avoid Alfred's default selection.
  5. Press <kbd>alt</kbd> + <kbd>v</kbd> or your own shortcut.
  

### Change Code Editor
1. Open Alfred Preferences
2. Find `Open in VSCode` workflow
3. Open `Run Script` object
4. Replace `Visual\ Studio\ Code` with `YOUR\ APPLICATION\ NAME`.

## Contribution
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](LICENSE)
