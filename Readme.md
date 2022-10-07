ketika deploy ke hosting harus membuat file .htaccess pada folder public_html/.htaccess atau public_html/namafolder/.htaccess

isi file htaccess tsb :

############## BATAS ##################

<IfModule mod_rewrite.c>
    <IfModule mod_negotiation.c>
        Options -MultiViews
    </IfModule>

    RewriteEngine On
       RewriteBase /

    # Redirect Trailing Slashes...
    RewriteRule ^(.*)/$ /$1 [L,R=301]

    # Handle Front Controller...
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^ index.php [L]
</IfModule>

############## BATAS ##################