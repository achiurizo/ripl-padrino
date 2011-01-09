# ripl-padrino #

([ripl](https://github.com/cldwalker/ripl)) is a light, modular alternative to irb. this is ripl for ([padrino](https://github.com/padrino/padrino-framework)).

## Install & Setup ##

    $ gem install ripl-padrino.

After that, just go to the root of the project directory and then run:

    $ ripl-padrino
    
Want to change the environment? Append it after the command:

    $ ripl-padrino test
    
## Commands ##

The basic commands available from padrino's console are also available like:

    >> reload!

which reloads the padrino project.

    >> applications
    
which shows the applications in the padrino project.


#### Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.