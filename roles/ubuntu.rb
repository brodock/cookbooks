name "ubuntu"
description "Ubuntu Server essential applications and configurations"
run_list 'recipe[ubuntu]', 'recipe[ubuntu::digitalocean]', 'recipe[locale]', 'recipe[omnibus_updater]', 'recipe[apt]', 
         'recipe[git::ppa]', 'recipe[build-essential]', 'recipe[dpkg_packages]', 'recipe[htop]', 'recipe[locale]',  'recipe[vim]',
         'recipe[chef-client::service]'

default_attributes(
    "locale" => {
        :lang => 'pt_BR.utf8',
        :language_packs => ['pt']
    }
)
