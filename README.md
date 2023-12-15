# LaTeX foundry

This is a foundry project to hold my latex document boiler-plates, custom new commands and standardized snippets of frequently used code. This boiler-plate uses a multi-file structure.

Feel free to use these examples any way you like. The content here is under The Unlicense so you are free to use it just about any way you like. For details, see the file LICENSE or [The Unlicense website](https://unlicense.org/).

```
└── latex-foundry
   ├── build.sh                     - Command line compile script
   ├── clean.sh                     - Command line clean script
   ├── config.tex                   - Configuration file for external parameters
   ├── help
   │  └── packages
   │     ├── algorithm2e.pdf
   │     ├── ...                    - PDF help files for some latex packages
   ├── inc                          - Folder for storing resourcs
   │  ├── res
   │  │  ├── code                   - Any external code resources
   │  │  │  └── test_code.py
   │  │  └── img                    - Images to be placed inside this.
   │  │     └── foundry             -   The \[lr]img commands refer to this as 
   │  │        ├── cad2d.jpeg       -   the base folder
   │  │        ├── cad3d.jpeg
   │  │        └── graph.jpg
   │  └── tex                       - Base folder where all .tex files reside
   │     ├── foundry                - Folder for boiler-plates and snippets 
   │     │  ├── 00-cover-page.tex
   │     │  ├── 01-Basics.tex
   │     │  ├── ...
   │     └── util                   - Utility folder
   │        └── newcmd
   │           └── img.tex
   ├── LICENSE
   ├── main.tex
   ├── main.tex.latexmain
   ├── README.md
   └── target                       - Directory where compiler outputs 
      ├── doc                       -   are stored.
      │  ├── main.pdf
      │  └── main.synctex.gz
```

## How to use

### Configure vimtex if you are using (neo)vim.

For this directory to be used by Vimtex, following configurations neeeds to
be added:

```
-- Vimtex configuration
vim.cmd [[
    let g:vimtex_compiler_latexmk = {
        \ 'aux_dir' : 'target/temp',
        \ 'out_dir' : 'target/doc',
        \}
]]
```

### Setup

Clone the github repo.

> git clone --depth=1 --branch=master https://github.com/deb-sandeep/latex-foundry ; rm -rf ./latex-foundry/.git

This will create the above mentioned folder and remove it as a git linked folder. At this point, you can either treat main.tex as your main document file and hack away or create a new one.

Remember that the `main.tex.latexmain` empty file identifies the main tex file for vimtex. If you are changing the name of your main tex file, rename this file to `<new main>.tex.latexmain`.


