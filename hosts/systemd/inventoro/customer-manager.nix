{pkgs, lib, ...}: {
    systemd.user.services.inventoro_customer_manager_prod_api = {
        enable = true;
        description = "inventoro/customer-manager/api/prod";
        serviceConfig = {
            Type = "simple";
            ExecStart = "${pkgs.kubectl}/bin/kubectl port-forward deployments/customer-manager 50003:80 --context=inventoro-prod --address=0.0.0.0";
            Restart = "always";
        };
        wantedBy = [ "multi-user.target" ];
        after = [ "network.target" ];
        environment = {
            PATH = lib.mkForce "/etc/profiles/per-user/jakub/bin";
        };
    };

    systemd.user.services.inventoro_customer_manager_test_api = {
        enable = true;
        description = "inventoro/customer-manager/api/test";
        serviceConfig = {
            Type = "simple";
            ExecStart = "${pkgs.kubectl}/bin/kubectl port-forward deployments/customer-manager 50002:80 --context=inventoro-test --address=0.0.0.0";
            Restart = "always";
        };
        wantedBy = [ "multi-user.target" ];
        after = [ "network.target" ];
        environment = {
            PATH = lib.mkForce "/etc/profiles/per-user/jakub/bin";
        };
    };

    systemd.user.services.inventoro_customer_manager_local_api = {
        enable = true;
        description = "inventoro/customer-manager/api/local";
        serviceConfig = {
            Type = "simple";
            ExecStart = "${pkgs.simpleproxy}/bin/simpleproxy -L :50001 -R :8011";
            Restart = "always";
        };
        wantedBy = [ "multi-user.target" ];
        after = [ "network.target" ];
        environment = {
            PATH = lib.mkForce "/etc/profiles/per-user/jakub/bin";
        };
    };
}