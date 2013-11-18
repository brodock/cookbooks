name "ubuntu"
description "Ubuntu Server essential applications and configurations"
run_list 'recipe[apt]', 'recipe[build-essential]',  'recipe[dpkg_packages]', 'recipe[git]', 'recipe[locale]', 'recipe[vim]'
default_attributes(
    "locale" => {
        :lang => 'pt_BR.utf8',
        :language_packs => ['pt']
    }
)
