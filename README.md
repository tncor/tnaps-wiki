# TNAPS Wiki

This repo holds all the content (and other bits) for the most-excellent TNAPS wiki, located at [wiki.tnaps.net][tnaps-wiki].

We are using [Gollum][gollum] and [Gollum-Site][gol-site] to generate the wiki. Gollum is a great piece of open source software released by the GitHub team that lets you maintain and build wikis from the contents of a Git repo.

`gollum-site` generates html from pages written in any format supported by Gollum (ASCIIDoc, Creole, Markdown, Textile, etc.).

<A name="contrib">
## How to Contribute

Part of the reason we switched to Gollum and GitHub for the TNAPS Wiki was to make it easier for people to contribute. So, treat this repo much like you would a code repo: If you have a change (be a minor edit or an entirely new page full of Python client code snippets), simply:

1. [Fork this repo][forking]

2. [Build a local copy][build]

3. Create a new Branch:

        git checkout -b <branch-name>

4. Add your changes

5. Run the specs and fix any formatting issues

        rake spec

6. Commit changes to your branch

7. [Send us a pull request][pull-req]

If it's a small or obvious change, we're likely to merge it right away.  If we have questions, we'll communicate with you using the pull request's issue page.

The [Gollum README][gol-read] provides a great introduction to using the wiki system.

<A name="build">
## Building the Wiki Locally

If you want to build and view the TNAPS Wiki locally, here is what you need to do:

1. Clone this repo:

        git clone git://github.com/tncor/tnaps-wiki.git

2. Ensure that you have [Bundler][bundler] installed:

        gem install bundler

3. Install all pre-requisite gems:

        bundle install

4. Install pygments (for code highlighting)

        easy_install pygments

5. Generate the site and start a local server (This will take a minute. Don't fret.)

        gollum-site generate        # Will generate the files
        gollum-site serve           # Will start the gollum-site server
        gollum-site serve --watch   # Will start the gollum-site server and will regenerate the site
                                    # when changes are made

5. Navigate to <http://localhost:8000/> (Default) to access a fully-functional copy of the TNAPS Wiki.

<A name="feedback">
## Issues, Questions, Comments, Etc.

* Send Email to [support@tncor.com][support]

* Use the [TNAPS Mailing List][mail-list]

* Create a new [Issue][issues]

## Credits

Inspired by Riak Wiki project.


[support]:      mailto:support@tncor.com "TN Support"
[issues]:     https://github.com/tncor/tnaps-wiki/issues "TNAPS-Wiki Issues Page"
[forking]:    http://help.github.com/forking/ "Github Forking Guide"
[pull-req]:   http://help.github.com/pull-requests/ "Github Pull-Requests Guide"
[build]:      #build "Building the Wiki"
[bundler]:    https://github.com/carlhuda/bundler/ "Bundler"
[gol-read]:   https://github.com/github/gollum/blob/master/README.md "Gollum README"
[gollum]:     https://github.com/github/gollum "Gollum Repo"
[gol-site]:   https://github.com/dreverri/gollum-site "Gollum-Site Repo"
[tnaps-wiki]: http://wiki.tnaps.net "TNAPS Wiki"

