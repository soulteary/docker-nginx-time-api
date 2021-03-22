FROM nginx:1.19.8-alpine

COPY --from=soulteary/prebuilt-nginx-modules:misc-1.19.8-alpine     /ndk_http_module.so                 /etc/nginx/modules/
COPY --from=soulteary/prebuilt-nginx-modules:misc-1.19.8-alpine     /ngx_http_set_misc_module.so        /etc/nginx/modules/
COPY --from=soulteary/prebuilt-nginx-modules:echo-1.19.8-alpine     /ngx_http_echo_module.so            /etc/nginx/modules/