PLUGIN_DIR=$(cd $(dirname $BASH_SOURCE)/.. && pwd)
PYTHON=${PYTHON:-python}

function configure_plugin {
    cp -a ${PLUGIN_DIR}/openstack-test-plugin/enabled/* ${DEST}/horizon/openstack_dashboard/local/enabled/
}

if is_service_enabled openstack-test; then
    if [[ "$1" == "stack" && "$2" == "pre-install"  ]]; then
        :

    elif [[ "$1" == "stack" && "$2" == "install"  ]]; then

    elif [[ "$1" == "stack" && "$2" == "post-config"  ]]; then
        echo_summary "Configurng MyPlugin"
        configure_plugin

    elif [[ "$1" == "stack" && "$2" == "extra"  ]]; then
        :
    fi

    if [[ "$1" == "unstack"  ]]; then
        :
    fi

    if [[ "$1" == "clean"  ]]; then
        :
    fi
fi
