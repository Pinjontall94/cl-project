# CL-Project - Generate modern project skeletons

## Usage

### Install roswell (if you haven't already)

* Mac/Linux/WSL
Install [homebrew](https://brew.sh/)
```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew install roswell
```

* Windows
Install [scoop](https://scoop.sh/)
```Powershell
> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
> iwr -useb get.scoop.sh | iex
> scoop install roswell
```

(More information is available in Roswell's [installation instructions](https://github.com/roswell/roswell/wiki/Installation),
but this should work for most use cases)

### Install cl-project & make an app
```bash
$ ros install Pinjontall94/cl-project
$ ros exec make-project my-app --name my-app \
--description "A test app" \
--author "Sam Johnson (she/her)" \
--email "sambjohnson94@gmail.com" \
--license AGPLv3+ \
--depends-on alexandria parenscript cl-who hunchentoot
```

### Run your app on the command line...
```bash
$ cd my-app
$ chmod +x roswell/my-app.ros
$ sh roswell/my-app.ros
```

### ...or compile it to a native binary!
```bash
$ cd my-app
$ ros build roswell/my-app.ros # tip: add "--disable-compression" at the end of this line for even faster startup times!
$ roswell/my-app
```

## What's the difference from other generators?

### 1. Flexible templates

CL-Project supports more parameters to embed, by using [CL-EMB](http://common-lisp.net/project/cl-emb/) to represent the skeleton files (See "cl-project/skeleton/").

### 2. One package per file style (Modern)

A modern CL project should be in accordance with [some rules](http://labs.ariel-networks.com/cl-style-guide.html). For instance, one file must have one package in it.

### 3. Recommends unit testing

Modern projects should have some unit tests. CL-Project generates a system for unit testing, so you can begin writing unit tests as soon as the project is generated.

## Parameters

All parameters are optional.

* `:name`: Project name. If this key isn't specified, the directory name will be used.
* `:description`: Short description for the new project.
* `:author`: Your name.
* `:email`: Your e-mail address.
* `:license`: License of the new project.
* `:depends-on`: A list of dependencies.

## See Also
- [Rove](https://github.com/fukamachi/rove) - Testing framework

## Author

* Sam Johnson (she/her) (sambjohnson94@gmail.com)

## Acknowledgements & Special Thanks

* Eitaro Fukamachi, author of the original cl-project and great lisper all around (e.arrows@gmail.com)

* Vincent Dardel, author of [cl-cookieproject](https://github.com/vindarel/cl-cookieproject)
(which this project's compilation modifications and roswell integration are heavily based on),
as well as the fantastic [Common Lisp Cookbook](https://lispcookbook.github.io/cl-cookbook/)

## License

Licensed under the AGPL version 3 or later
