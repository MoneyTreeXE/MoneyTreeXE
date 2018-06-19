MoneyTreeXE integration/staging tree
=====================================


What is MoneyTreeXE?
-------------------

MoneyTreeXE is an experimental digital currency that enables near instant payments to
anyone, anywhere in the world. MoneyTreeXE uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. MoneyTreeXE is also the name of open source
software which enables the use of this currency.

MoneyTreeXE consolidates the best features from various similar projects into
a single, configurable package to counteract the fragmentation and pure copy-paste
trends currently observable.

Rebranding
----------
MoneyTreeXE was based on Bitcoin Core 0.16.1, which was then generalized to allow for 
feature expansion. Desirable features have and will continuously be cherry picked from other 
projects to evolve MoneyTreeXE.

We have decided against a blanket find-replace rebranding strategy, to avoid the chaos that
can ensue because of it (incorrect urls, unintended copyright infringement etc). This means you 
may find references to the source projects in the code. We know they are there and will tend 
to them, where possible with focussed scripted diffs.

License
-------

MoneyTreeXE is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/MoneyTreeXE/MoneyTreeXE/tags) are created
regularly to indicate new official, stable release versions of MoneyTreeXE.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

Please discuss complicated or controversial changes before working on a patch set. We're always
working on expanding our communications channels, which we'll update as soon as they become 
available.

Upstream stable releases will be merged into the code base as a priority, when they are made available.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake 
might cost people lots of money.

That being said, this is an experimental project. Please use your common sense.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The tests are largely inherited from the various projects used as sources for the code and will 
most likely need some tlc.

The Travis CI system makes sure that every pull request is built for Windows, Linux, and OS X, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

Translations
------------

We'll be implementing our own translation infrastructure, but untill then, translations will largely 
follow Bitcoin's:

Changes to translations as well as new translations can be submitted to
[MoneyTreeXE's Transifex page](https://www.transifex.com/projects/p/bitcoin/).

Translations are periodically pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next
pull from Transifex would automatically overwrite them again.

Translators should also subscribe to the [mailing list](https://groups.google.com/forum/#!forum/bitcoin-translators).

