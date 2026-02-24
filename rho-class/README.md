# Rho ~ Version 3.0.0

## Description

Rho is a LaTeX2e document class designed for the creation of professional, well-structured research articles, technical/lab reports, and academic documentation.

The main features of the class include:

* A self-contained structure, where the class file and custom packages are distributed within a single folder for easy setup and portability.
* STIX2 as the primary serif font, providing excellent readability for body text and mathematical content.
* Custom environments for notes, information blocks, and structured content.
* Enhanced code presentation, with custom color schemes for multiple programming languages (e.g., MATLAB, C, C++, TeX).
* Integration of a dedicated translation package that simplifies the translation of selected document elements, allowing automatic adaptation to the document language.
* Compatible with external editors such as TeXstudio (additional setup may be required).

## License

This work is licensed under Creative Commons CC BY 4.0. 
To view a copy of CC BY 4.0 DEED, visit:

    https://creativecommons.org/licenses/by/4.0/

This work consists of all files listed below as well as the products of their compilation.

```
rho/
`-- rho-class/
    |-- rho.cls
    |-- rhobabel.sty
    |-- rhoenvs.sty
`-- main.tex
`-- rho.bib
```

## Supporting

I appreciate that you are using rho-class as your preferred template. If you would like to acknowledge this class, adding a sentence somewhere in your document such as 'this [your document type] was typeset in LaTeX with the rho class' would be great!

### Any contributions are welcome!

Coffee keeps me awake and helps me create better LaTeX templates. If you wish to support my work, you can do so through PayPal: 

    https://www.paypal.me/GuillermoJimeenez

### More of my work

Enjoyed this document class? Check out **tau-class**, my very first LaTeX template.

    https://es.overleaf.com/latex/templates/tau-class-lab-report-template/chhshmhxstsq

## Github repository

Visit the repository to access the source code, track ongoing development, report issues, and stay up to date with the latest changes.

    https://github.com/MemoJimenez/Rho-class

## Contact Me

Have questions, suggestions, or an idea for a new feature? Found a bug or working on a project you’d like to invite me to?  

Feel free to reach out — I’d be happy to help, collaborate, or fix the issue.  Your feedback helps me improve my templates!

- **Instagram**: memo.notess
- **Email**:     memo.notess1@gmail.com
- **Website**:   https://memonotess1.wixsite.com/memonotess

## Updates Log

### Version 3.0.0 (24/02/2026)

A new year brings major improvements and new features to rho-class!

1. The `\journalname{}` command has been renamed to `\doctype{}` for improved clarity and semantic consistency.
2. A new `\docinfo{}` command has been introduced to provide a flexible block for supplementary metadata. Positioned at the bottom of the first page, it works seamlessly alongside the new `\corres{}` command.
3. The corresponding author section, previously located above the abstract, has been removed and integrated into the new `\docinfo{}` block.
4. A new `\corres{}` command has been added as a flexible alternative to `\thanks{}`, allowing for easier positioning and customization of corresponding author details.
5. New commands have been introduced to display additional document metadata in the footer of the first page (`\journalname{}`, `\journal{}`, `\vol{}`, `\no{}`).
6. New cross-reference commands have been implemented for figures, tables, code listings, and equations, with hyperlinks applied to both the label and the reference number. Additional commands are provided in `rhobabel.sty` to configure language and style.
7. A new command has been introduced for inline code formatting, providing a visual style distinct from both normal text and traditional verbatim to improve readability.
8. All section titles are now displayed in uppercase to ensure visual consistency across the document.
9. All environments feature a more modern design while preserving their original visual identity.
10. All environments and the abstract now feature a subtle rounded border, adding a modern and polished touch to the overall template design.
11. The default `\sffamily` font has been changed from Helvetica to Fira Sans, providing a more modern and flexible appearance.
12. The font used for code has been updated to Fira Mono, a widely adopted monospaced typeface that improves readability and visual consistency.
13. The `numeric-comp` option has been enabled so that multiple references can appear compressed in the same bracket.
14. The `minted` package has been added to provide enhanced code formatting and improved syntax highlighting.
15. The configuration of the `listings` package has been refined; it remains a fully supported alternative to `minted`.
16. The `rhoenvs.sty` package has been completely rewritten to optimize performance and improve environment styling.
17. All packages are now organized into clearly defined sections within `rho.cls`. Non-essential packages have been commented out and moved to an "Optional-, extra- packages" section to reduce compilation time.
18. The class source code has been optimized and cleaned up to enhance maintainability and provide a better user experience.

### Version 2.1.2 (28/02/2025)

1. Added an arrow when there is a line break when a code is inserted.
2. Numbers in the codes are now shown in blue to differentiate them.
3. Keywords are now shown in bold for codes.
4. The lstset for matlab language was removed for better integration
5. The tabletext command will now display the text in italics.

### Version 2.1.1 (01/09/2024)

1. Journalname has modified its font size to improve the visual appearance of the document.
2. Solution of non-justified abstract. Added `\justify` command in line 307 (rho.cls).

### Version 2.1.0 (14/08/2024)

1. The language boolean function has been removed from `rhobabel.sty` and the language is now manually set in the `main.tex` to avoid confusion.
2. The line numbering boolean function has been removed and replaced by the command `\linenumbers` in the `main.tex`.
3. The graphics path option was added in `rho-class/rho.cls/packages` for figures.
4. Small details have been added to improve the layout of the document.

### Version 2.0.0 (21/05/2024)

Big updates were made to rho class.

1. Introducing a new front cover.
2. Automatic adjustments if the followings commands are not declared in the preamble:
    - `\corres{}`, `\doi{}`, `\received{}`, `\reviewed{}`, `\accepted{}`, `\published{}`, `\license{}`
    - `\journalname{}`
    - `\dates{}`
    - `\keywords{}`
3. New command `\setbool{corres-info}{t/f}`  to disable or enable the corresponding author section (main.tex).
    - If the corresponding author is enable: `\setbool{corres-info}{true}`
    - If the corresponding author is disable: `\setbool{corres-info}{false}`
4. New command `\setbool{linenumbers}{t/f}` to disable or enable line numbering (main.tex).
    - If the line numbering is enable: `\setbool{linenumbers}{true}`
    - If the line numbering is disable: `\setbool{linenumbers}{false}`
5. Automatic adjustments if the followings commands are not declared in the preamble:
    - `\leadauthor{}`
    - `\footinfo{}`
    - `\smalltitle{}`
    - `\institution{}`
    - `\theday{}`
6. Custom environments have a small new design. Now, the border is the same color as the background for a cleaner look.
7. We introduced a new package `rhobabel.sty` for translations and language of the document.
8. New command `\setboolean{es-babel}{t/f}` to change the language to spanish:
    - If spanish babel is enable: `\setboolean{es-babel}{true}`
    - If spanish babel is disable: `\setboolean{es-babel}{false}`
9. If you would like to write in another language, you can modify this package to your needs.

### Version 1.0.0 (28/04/2024)

1. Launch of the first version of rho-class, made especially for academic articles and laboratory reports. 

#### Enjoy writing with rho-class :D