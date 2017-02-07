if [ "${CI_BUILD_STAGE}" == "deploy" ]; then
    export OS_AUTH_URL="${DEPLOY_OS_AUTH_URL}"
    export OS_USERNAME="${DEPLOY_OS_USERNAME}"
    export OS_PASSWORD="${DEPLOY_OS_PASSWORD}"
else
    export OS_AUTH_URL="${PACKER_OS_AUTH_URL}"
    export OS_TENANT_NAME="${PACKER_OS_TENANT_NAME}"
    export OS_USERNAME="${PACKER_OS_USERNAME}"
    export OS_PASSWORD="${PACKER_OS_PASSWORD}"
    export OS_NETWORKS="${PACKER_OS_NETWORKS}"
    export OS_SECURITY_GROUPS="${PACKER_OS_SECURITY_GROUPS}"
fi

