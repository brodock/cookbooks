name "ruby"
description "Install updated ruby"
run_list "recipe[chruby::system]"
default_attributes(
    "chruby" => {
        "rubies" => {
            "2.0.0-p247" => true
        },
        "default" => "2.0.0-p247"
    }
)
