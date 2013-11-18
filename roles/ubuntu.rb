name "ubuntu"
description "Ubuntu Server essential applications and configurations"
run_list 'recipe[ubuntu::brasil]', 'recipe[apt]', 'recipe[build-essential]', 'recipe[git]', 'recipe[locale]', 'recipe[vim]'
default_attributes(
    "locale" => {
        :lang => 'pt_BR.utf8',
        :language_packs => ['pt']
    }
)
