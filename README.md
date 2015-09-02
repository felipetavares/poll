# poll

*poll* is a tool to create polls on a tilde club.
It was originally written for use on [ctrl.c.club](http://ctrl-c.club).

# Installation

To install in a Ubuntu/Debian based distribution, use (you need to have git and bash installed):

	git clone https://github.com/felipetavares/poll
	cd poll
	sudo ./install.sh

and that's all!

# How to use

Choose a directory where you wish to create a poll,
if you are from ctrl-c.club, you probably wish to
do this inside your `public_html` folder, but if
you want to keep things clean, I suggest creating
a `public_html/polls` directory. When you are inside
the desired directory, run the command:

	poll new DIRECTORY

where `DIRECTORY` is the directory where your poll
will live.

> NOTE: The directory you specify will be created by the command
itself, there is no need to create it first.

# Configuration

The behavior of the poll is specified by three files:

 * .topic
 * .question
 * .options

all these files are inside the directory created by the `poll new` command above.

# .topic

Use it to specify the topic of the poll, should be short and direct.

# .question

The question itself. Should provide all the needed details.

# .options

Some default options, one per line. Notice that you can add two
special values in the file:

 * Other
 * Withdraw vote

where the first will allow for the user to  insert a custom
option, and the second will allow him/her to withdraw the
vote after having voted.

After configuring your poll, run the command:

	poll update

from inside it, or

	poll update DIRECTORY

from outside, where `DIRECTORY` is the directory where the poll is live.

# Counting results

Use:

	poll result

from inside the poll, or:

	poll result DIRECTORY

where `DIRECTORY` is the path to the poll.

The results are automatically ordered from more votes to less votes.

# Voting

Instructions on how to vote are provided by the created poll itself.

# Bugs

Report bugs as issues here on github.
