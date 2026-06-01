; OJS configuration file for The Ledger
;
; Prototype (this stack): https://theledgereconstatecraft.org
; Production (live site):  https://theledgereconstatecraft.com
;
; Do NOT commit secrets — put real passwords in .env.local (git-ignored).

[general]

; Set this to "On" after the OJS installer has run successfully.
installed = Off

; Base URL served to users.
; This stack runs the prototype at theledgereconstatecraft.org.
; When you are ready to cut over production, change this to
; https://theledgereconstatecraft.com and flip force_ssl = On below.
base_url = "https://theledgereconstatecraft.org"

; Distinct cookie name so prototype sessions never collide with
; anything running on .com.
session_cookie_name = OJSSID_ledger_org

[database]

driver = mysqli
host = db
username = ojs
password = CHANGE_ME_OJS
name = ojs

; Set to On to log every SQL query (development only — Off in prototype/prod)
debug = Off

[security]

; Secret used for salting passwords and tokens.
; Generate with: openssl rand -hex 32
salt = "CHANGE_ME_SALT_64_CHARS_OR_MORE_HERE"

; Prototype runs behind Caddy which terminates TLS, so set this On.
force_ssl = On

[email]

; SMTP settings — configure before the journal accepts submissions.
smtp = On
smtp_server = smtp.example.com
smtp_port = 587
smtp_auth = tls
smtp_username = "mail@theledgereconstatecraft.org"
smtp_password = "CHANGE_ME_SMTP"

; From address shown in outbound mail.
from_address = "editor@theledgereconstatecraft.org"
from_name = "The Ledger"

[files]

; Absolute path inside the container for non-public uploaded files.
files_dir = /var/www/html/private

[oai]

oai = On
repository_id = "theledgereconstatecraft.org"

[i18n]

locale = en
client_charset = utf-8

[debug]

show_stacktrace = Off
deprecation_warnings = Off
