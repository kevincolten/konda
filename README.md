# konda

## Why you want this
`konda` is a [Conda](http://conda.pydata.org/docs/) environment manager built to be familiar with those who use other successful environment managers such as [RubyGems](https://rubygems.org/), [Composer](https://getcomposer.org/), [NPM](https://www.npmjs.com/), [Bower](http://bower.io/), etc.

## Some context
Conda has an amazing feature that lets you [create multiple python enviroments](http://conda.pydata.org/docs/using/envs.html) with your preferred version of python and some cherry picked packages. The problem is that you have to set them up by hand: a new environment means re-installing all packages, usually from memory and/or error logs (you know it's true) and sharing the project with anyone else turns into a discussion about what dependencies were used and which are extraneous.

## Installation
1. With [npm](https://www.npmjs.com/) install [json](https://www.npmjs.com/package/json)
  `sudo npm install -g json`
2. `git clone git@github.com:mistakevin/konda.git` into your favorite directory.
3. `alias konda='source [path to directory]/konda/konda.sh'`
4. Profit

## Quick Start
Navigate to your project directory.

1. `konda init`
2. `What would you like to name this environment? [unique name]`
  * It pays to be unique here. You cannot have the same environment name as another on your system.
3. `What version of python would you like to use? [e.g. 2.7]`
4. _conda.json_ should have been created that looks something like this:

```json
  {
    "environment": "unique name",
    "version": "2.7",
    "conda":[]
  }
```
.5. Add a package from [anaconda.org](http://anaconda.org/)

```json
{
  "environment": "unique name",
  "version": "2.7",
  "conda":[
    {
      "channel": "anaconda",
      "package": "bokeh"
    }
  ]
}
```
.6. `konda install`

## Docs
* `konda init` Generates a _conda.json_ in the current directory if one doesn't exist
* `konda install` Creates environement, activates the environment, installs all packages
* `konda activate` Activates environment defined in _conda.json_
* `konda update` Updates/installs all packages listed in _conda.json_
* `konda reset` Deletes environment, creates a new environment, reinstalls all packages
