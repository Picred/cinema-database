# Sito Web del progetto *cinema-database*

La documentazione del progetto è presente [qui](https://github.com/picred/cinema-database/tree/main/data/Documentazione.pdf)

# Prerequisites

- Composer
- Laravel
- MySQL


# Setup

### Installazione Composer
[Placeholder]

### Installazione Laravel
[Placeholder]


### Installazione MySQL
[Placeholder]

#### Utilities
Per aggiungere un user con tutti i permessi sul database si può usare 

```sql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON database_name.* TO 'user'@'localhost';
```

### Configurazione 
Impostare le variabili d'ambiente nel file `.env.example`:

```conf
DB_DATABASE=website
DB_USERNAME=root
DB_PASSWORD=
```

Rinominare il file `.env.example` in `.env` 


### Migrazioni
Dopo aver impostato le variabili d'ambiente per il Database occorre avviare le migrazioni

`php artisan migrate`


# Live Demo

`php artisan serve`

[Live demo](http://localhost:8080)


# Credits


# Contributing