# Test automation graded exercises

## How to do the exercises?

### Requirements

* [git](https://git-scm.com/)
* [python](https://www.python.org/) 3.7 or newer
* [node.js](https://nodejs.org/en/download/)

### Setup

* Make a **private** copy of this [template repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
* Add severicasserly to the repository as a [collaborator](https://docs.github.com/en/issues/planning-and-tracking-with-projects/managing-your-project/managing-access-to-your-projects#granting-a-collaborator-access-to-your-project)
* [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) your copy of the repository to your machine
* Install Robot Framework Browser (if you do not have it installed)
  * python -m venv venv
  * source venv/Scripts/activate
  * Install robotframework and robotframework-browser python packages `pip install robotframework robotframework-browser`
  * Run `rfbrowser init`

### Returning the exercises for grading

When you have completed the exercises (and have them pushed to GitHub) copy the link for the repository GitHub page and submit it in studentportalen.

## Robot Framework tests

This time we will be doing some tests for https://eficode.com. The tests will be short and fairly simple, but there is no one correct way to do them.
Instead focus on the good practices we have learned from the previouse exercises. Make keywords and variables and use resource files as you find appropriate.

### Robot Framework fundamentals training is one day

* Navigate to eficode.com
* Click search and type in *robot framework*
* Find and navigate to the *Robot Framework fundamentals training* -page
* Verify duration is one day



## GitHub Actions

The repository already has a workflow for running Robot Framework tests. Now we want to add a separate workflow for [linting](https://en.wikipedia.org/wiki/Lint_(software)) (style checking) with [Robocop](https://robocop.readthedocs.io/en/stable/). The repository has a *.robocop* configuration file that you can modify but don't need to.

To run the linter you will need to first install the `robotframework-robocop` python package. Then simply running `robocop` on the top level of the repository will check the tests for any errors or violations to code quality standards.

[Basics of GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions#workflows)
