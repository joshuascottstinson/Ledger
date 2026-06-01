; OJS configuration file for The Ledger
;
; Prototype (this stack): https://theledgereconstatecraft.org
; Production (live site):  https://theledgereconstatecraft.com
;
; Do NOT commit secrets — put real passwords in .env.local (git-ignored).
; app_key, salt, and database password are set on the server only.

[general]

; Generate with: docker exec ledger_ojs php -r "echo 'base64:' . base64_encode(random_bytes(32)) . PHP_EOL;"
app_key = "CHANGE_ME_APP_KEY"

; Set this to "On" after the OJS installer has run successfully.
installed = On

; Base URL served to users.
; OJS receives plain HTTP from Caddy (which handles TLS termination).
; When cutting over to production, change to https://theledgereconstatecraft.com
base_url = "http://theledgereconstatecraft.org"

; Distinct cookie name so prototype sessions never collide with .com
session_cookie_name = OJSSID_ledger_org

date_format_short = "%Y-%m-%d"
date_format_long = "%B %e, %Y"
datetime_format_short = "%Y-%m-%d %I:%M %p"
datetime_format_long = "%B %e, %Y - %I:%M %p"
time_format = "%I:%M %p"

[database]

driver = mysqli
host = db
username = ojs
password = "CHANGE_ME_OJS"
name = ojs

; Set to On to log every SQL query (development only — Off in prototype/prod)
debug = Off

[security]

; Secret used for salting passwords and tokens.
; Generate with: openssl rand -hex 32
salt = "CHANGE_ME_SALT_64_CHARS_OR_MORE_HERE"

; Caddy handles TLS termination — OJS receives plain HTTP internally
force_ssl = Off

[email]

; Required in OJS 3.5 — sets the default mailer driver
default = sendmail

; SMTP settings — configure when ready to send real email
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

; Private uploads directory (not web-accessible)
files_dir = /var/www/files

; Public uploads directory
public_files_dir = /var/www/html/public

[oai]

oai = On
repository_id = "theledgereconstatecraft.org"

[i18n]

locale = en
client_charset = utf-8

[debug]

show_stacktrace = Off
deprecation_warnings = Off
