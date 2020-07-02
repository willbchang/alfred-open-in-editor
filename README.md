<p align="center">
  <img src="icon.png" alt="Open in Editor Logo" height="150px"><br>
  <sub>Dedicated to @Daisy for our friendship and her kindly support.</sub>
</p>

# Open in Editor
An Alfred Workflow to open file/folder in editor with one hotkey.

## Installation
1. Download [Open in Editor.alfredworkflow](https://github.com/willbchang/alfred-open-in-editor/releases/latest).
2. Double click `Open in Editor.alfredworkflow` to install.
3. Click `Import` Button.
4. Double click `Hotkey` and set your shortcut.(I'm using <kbd>alt</kbd> + <kbd>c</kbd>).

## Usage
<kbd>alt</kbd> + <kbd>c</kbd>
- Launch Editor if Editor isn't active.
- Bring Editor to the front window if Editor is active.
- Open selected file/folder from Finder or Alfred File Browser.
  1. **Enable Quick Search Mode** in `Features -> File Action`.
  2. Launch Alfred and press <kbd>spacebar</kbd> or input a single quote.
  3. Move the highlight block to the destination folder.
  4. *Notice*: if you enabled `Advanced -> History` and browse file with it, you should use <kbd>tab</kbd> or <kbd>←</kbd> or <kbd>→</kbd> to avoid Alfred's default selection.
  5. Press <kbd>alt</kbd> + <kbd>c</kbd> or your own shortcut.

### Emacs Support
1. Add the code below to your `init.el` or `.emacs`
  ```lisp
  ;; Enable server for opening file/folder from emacsclient
  (server-start)
  ```
2. Set the shortcut to launch Emacs.
3. Try it!

### Vim Support
1. The default vim is `vim`, if you're using `nvim`, open the `Run Script` and change `vim` to `nvim`.
2. The default terminal is `Terminal`, if you're using `iTerm2` or something else, open the `Run Script` and change `Terminal` to `YOUR APPLICATION NAME`.
3. Set the shortcut to launch vim.
4. Try it!

### Change Code Editor
1. Open **Alfred Preferences** -> **Workflows**  -> **Open in Editor**.
2. Double click `Run Script`, replace `Visual Studio Code` with `YOUR APPLICATION NAME`.
3. Make sure the app name surrounds with **double quote** `""`.

## Contribution
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Credits
Icon made by https://www.flaticon.com/authors/freepik <br>
It was built with 💖 & [RubyMine](https://www.jetbrains.com/ruby/).

## License
[MIT](LICENSE)

