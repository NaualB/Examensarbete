# Test automation för tetrapak.com/sv-se


### Nödvändigt att installera:

* [git](https://git-scm.com/)
* [python](https://www.python.org/) 3.7 or newer
* [node.js](https://nodejs.org/en/download/)

### Setup

* Make a **private** copy of this [template repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
* [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) your copy of the repository to your machine
* Robot Framework Browser installerad(if you do not have it installed)
  * python -m venv venv
  * source venv/Scripts/activate
  * Install robotframework and robotframework-browser python packages `pip install robotframework robotframework-browser`
  * Run `rfbrowser init`



## Robot Framework tests

Jag kommer köra regressionstester på websidan https://www.tetrapak.com/sv-se. Testerna kommer att hållas simpelt då jag inte vill överbelasta sidan pga risk för krasch.


### Robot Framework fundamentals 

* Navigera till tetrapak.com/sv-se
* Klicka på sök och skriv in *robot framework*
* Hitta och navigera till *Robot Framework fundamentals training* -sida
* Verifiera varaktigheten



## GitHub Actions

Repository har redan ett arbetsflöde för körning av Robot Framework tester. Nu vill jag lägga till ett separat arbetsflöde för [linting](https://en.wikipedia.org/wiki/Lint_(software)) (style checking) med [Robocop](https://robocop.readthedocs.io/en/stable/). Repository har en *.robocop* konfiguration-fil som jag kan modifiera.

För att köra linter så måste jag ha installerat `robotframework-robocop` python packet. Sen är det bara att köra `robocop` på den översta nivån av repositoryn och som sen kommer att kontrollera om testerna har några eventuella fel eller någon typ av felkodning som inte sträcker standarden eller kvaliten enligt robocop.

[Basics of GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions#workflows)
