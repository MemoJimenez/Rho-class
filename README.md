# Rho ~ Version 2.1.1

## Description

The main features of the class are as follows.

* The class document and custom packages are available in a *single* folder.
* Compatible with external editors.
* Stix2 font for clear text.
* Custom environments for notes and information.
* Custom colours when code is inserted for programming languages (Matlab, C, C++, and LaTeX).
* Appropriate conjunction ('y' for Spanish, 'and' for English) when two authors are included.
* Easy to customise with boolean functions.
* Special design for unnumbered sections.

## Updates Log

### Version 1.0.0 (28/04/2024)

Launch of the first version of rho class, made especially for academic articles and laboratory reports. 

### Version 2.0.0 (21/05/2024)

Big updates were made to rho class.

[1] Introducing a new front cover.

[2] Automatic adjustments if the followings commands are not declared in the preamble:
* corres, doi, received, reviewed, accepted, published, license
* journalname
* dates
* keywords
* Special design for unnumbered sections.

[3] New command '\setbool{corres-info}{t/f}'  to disable or enable the corresponding author section (main.tex).
* If the corresponding author is enable: '\setbool{corres-info}{true}'
* If the corresponding author is disable: '\setbool{corres-info}{false}'
    
[4] New command '\setbool{linenumbers}{t/f}' to disable or enable line numbering (main.tex).
* If the line numbering is enable: '\setbool{linenumbers}{true}'
* If the line numbering is disable: '\setbool{linenumbers}{false}'
    
[5] Automatic adjustments if the followings commands are not declared in the preamble:
* leadauthor
* footinfo
* smalltitle
* institution
* theday
    
[6] Custom environments have a small new design. Now, the border is the same color as the background for a cleaner look.

[7] We introduced a new package 'rhobabel' for translations and language of the document.

[8] New command '\setboolean{es-babel}{t/f}' to change the language to spanish:
* If spanish babel is enable: '\setboolean{es-babel}{true}'
* If spanish babel is disable: '\setboolean{es-babel}{false}'
    
[9] If you would like to write in another language, you can modify this package to your needs.

### Version 2.1.0 (14/08/2024)

[1] The language boolean function has been removed from rhobabel.sty and the language is now manually set in the main.tex to avoid confusion.

[2] The line numbering boolean function has been removed and replaced by the command \linenumbers in the main.tex.

[3] The graphics path option was added in rho-class/rho.cls/packages for figures.

[4] Small details have been added to improve the layout of the document.

### Version 2.1.1 (01/09/2024)

[1] Journalname has modified its font size to improve the visual appearance of the document.

[2] Solution of non-justified abstract. Added 'justify' command in line 307 (rho.cls).

## Supporting

I appreciate that you are using rho class as your preferred template. If you would like to acknowledge this class, adding a sentence somewhere in your document such as 'this report/article was typeset using the rho class a LaTeX template' would be great!

**More of our work**

Did you like this class document? Check out *tau class* designed for your lab reports.

    https://www.overleaf.com/latex/templates/tau-class-lab-report-template/chhshmhxstsq

**Any contributions are welcome!**

Coffee keeps us awake and helps us create better LaTeX templates. If you wish to support our work, you can do so through PayPal: 

    https://www.paypal.me/GuillermoJimeenez

## License

This work is licensed under Creative Commons CC BY 4.0. 
To view a copy of CC BY 4.0 DEED, visit:

    https://creativecommons.org/licenses/by/4.0/

This work consists of all files listed below as well as the products of their compilation.

```
Rho-class/
`-- rho-class/
    |-- rho.cls
    |-- rhobabel.sty
    |-- rhoenvs.sty
`-- main.tex
`-- rho.bib
`-- README.md
```

## Contact us

Do you like the design, but you found a bug? Is there something you would have done differently? Any contribution is welcome!

*Email: memo.notess1@gmail.com & eduardo.gracidas29@gmail.com*

*Instagram: memo.notess*

*Website: https://memonotess1.wixsite.com/memonotess*

---
Enjoy writing with rho-class :)
