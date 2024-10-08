PLUGIN_DIR=$(cd $(dirname $BASH_SOURCE)/.. && pwd)

function configure_plugin {
    cp -a ${PLUGIN_DIR}/openstack-test-plugin/enabled/* ${DEST}/horizon/openstack_dashboard/local/enabled/
}

if is_service_enabled openstack-test; then
    if [[ "$1" == "stack" && "$2" == "post-config"  ]]; then
        echo_summary "Configurng MyPlugin"
        configure_plugin
    fi
fi
