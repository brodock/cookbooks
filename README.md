Chef Cookbooks with Berkshelf and Vagrant
=========================================

WARNING: THIS IS A DEVELOPMENT REPOSITORY AND QUALITY MAY VARY.

This is My Cookbooks focused on configuring and deploying
applications on Ubuntu Linux 12.04 LTS

For Ruby on Rails applications I've decided to not use RVM or Rbenv as I don't
believe anymore that this is the best way to handle new ruby versions on production
machines.

I'm temporarily choosing a recipe that compiles ruby as a system library,
but will change to debian packages as soon as a trustfully and updatable
is discovered. I've been playing with brightbox packages, but find better
to compile my own as they lag many months before releasing new versions.

For web servers, nginx is my prefered choice as it's faster then any other, 
lightweight and powerfull enought for all my needs.

To deploy and manage Ruby on Rails application I decided to stay with Passenger
as new versions are fast enough and are self-healing and more robust than
alternatives like Unicorn and Puma.
