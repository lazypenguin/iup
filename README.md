# IUP wrapper 
This is a nim wrapper for the [IUP](http://webserver2.tecgraf.puc-rio.br/iup/) GUI toolkit.

## History
The wrapper was originally part of the standard library. This project was created to remove it from the standard library, 
update it to the latest version of IUP and integrate it with nimble.

## Versioning
This library uses [semantic versioning](http://semver.org/) with a small modification. The Major and Minor versions of this library
will always sync with the major and minor version of IUP. If you are using version 3.16 of IUP then you would use version 3.16.x of this
wrapper. 

## Instal
Install nim and nimble and then

	nimble install niup

Download IUP binaries from [here](http://sourceforge.net/projects/iup/files/). Select your version and then select your platform. Newer versions
come bundled with installation instructions and an install script.

## Usage
To access all the functionality in iup, import the top level iup module. If you would like to only use specific functionality from IUP then import
from the iup sub directory.

E.g. `import niup` will enable all functionality, `import niup.iup_core` will only import the core IUP functions.

## Documentation
Please visit the [IUP documentation](http://webserver2.tecgraf.puc-rio.br/iup/) for details about the toolkit

## Examples
A few nim-specific examples can be found in the `examples/` directory. For more comprehensive examples visit the 
[IUP documentation](http://webserver2.tecgraf.puc-rio.br/iup/examples/C/).