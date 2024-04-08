# Sito Web del progetto *cinema-database*
La documentazione del progetto è presente [qui](https://github.com/picred/cinema-database/tree/main/data/Documentazione.pdf)

# Prerequisiti
- [PHP](https://www.php.net/manual/en/install.php)
- [Composer](https://getcomposer.org/download/)
- [Laravel](https://laravel.com/docs/11.x/installation)
- [MySQL](https://dev.mysql.com/downloads/installer/)

# Setup utilities
- Moduli php necessari: `sudo apt install php-bcmath php-mbstring php-mysql php-xml php-curl`

- Controllo installazione moduli:  
```bash
$ php -m | grep -Ei '(bcmath|ctype|fileinfo|json|mbstring|openssl|pdo|tokenizer|^xml$|curl)'
bcmath    # installata a parte, in quanto NON dipendenza di PHP su Ubuntu 18.04
ctype
curl
fileinfo
json
mbstring  # installata a parte, in quanto NON dipendenza di PHP su Ubuntu 18.04
openssl
pdo_mysql # installata a parte, in quanto NON dipendenza di PHP su Ubuntu 18.04
tokenizer
xml       # installata a parte, in quanto NON dipendenza di PHP su Ubuntu 18.04
```

- Avere sempre PHP con *versioni fresche*:
```bash
$ sudo add-apt-repository ppa:ondrej/php # ondrej/php è il repository deb semi-ufficiale per PHP
$ sudo apt update
$ sudo apt upgrade php php-bcmath php-mbstring php-mysql php-xml php-curl -y # si aggiornano esplicitamente anche i pacchetti necessari, per sicurezza
$ sudo update-alternatives --config php # dal menu proposto, si scelga PHP 8.x come nuovo default
$ php -v # PHP 8.1.2 (cli) (built: Jan 24 2022 10:42:15) (NTS)
```

- Per aggiungere un user con tutti i permessi sul database si può usare
```sql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON database_name.* TO 'user'@'localhost';
```
### Configurazione
- Impostare le variabili d'ambiente nel file `.env.example`:
```conf
DB_DATABASE=website
DB_USERNAME=root
DB_PASSWORD=
```

- Rinominare il file `.env.example` in `.env`

### Migrazioni
Dopo aver impostato le variabili d'ambiente per il Database occorre avviare le migrazioni: `php artisan migrate`

# Live Demo
`php artisan serve`
[Live demo](http://localhost:8080)
# Credits
# Contributing