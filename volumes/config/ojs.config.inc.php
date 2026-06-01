; OJS configuration file for The Ledger
; Production: https://theledgereconstatecraft.com
; Prototype:  http://localhost:8080
;
; Do NOT commit secrets — override via environment variables or a local
; .env file that is listed in .gitignore.

[general]

; Set this to "On" once the journal is live on the production domain.
installed = Off

; Base URL exposed to users.
; Switch to the production URL when deploying to theledgereconstatecraft.com.
base_url = "http://localhost:8080"

; Warn authors/editors when the site is the prototype, not production.
session_cookie_name = OJSSID_ledger_proto

[database]

driver = mysqli
host = db
username = ojs
password = CHANGE_ME_OJS
name = ojs

; Set to On to log every SQL query (development only)
debug = Off

[security]

; Secret used for salting passwords and tokens — generate a strong random value.
salt = "CHANGE_ME_SALT_64_CHARS_OR_MORE_HERE"

; Enforce HTTPS in production (set to On when behind SSL).
force_ssl = Off

[email]

; SMTP settings — configure before the journal accepts submissions.
smtp = On
smtp_server = smtp.example.com
smtp_port = 587
smtp_auth = tls
smtp_username = "mail@theledgereconstatecraft.com"
smtp_password = "CHANGE_ME_SMTP"

; From address shown in outbound mail.
from_address = "editor@theledgereconstatecraft.com"
from_name = "The Ledger"

[files]

; Absolute path inside the container for non-public uploaded files.
files_dir = /var/www/html/private

[oai]

oai = On
repository_id = "theledgereconstatecraft.com"

[i18n]

locale = en
client_charset = utf-8

[debug]

show_stacktrace = Off
deprecation_warnings = Off
