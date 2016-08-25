## Fork updated of [wagtail-screencast-hellowagtail] (https://github.com/muthuridennis/wagtail-screencast-hellowagtail)

### Include bdd db.sqlite3 with data, for rapid view
(no migrate needed, and superuser ir *admin* with password *admin*, but can create another superuser)

### How to use:

##### 1. Create work directory and virtualenv:
```
    $ mkdir wagtail-news-time
    $ cd wagtail-news-time/
    $ virtualenv --python=python3.5 env
    $ source env/bin/activate
```


##### 2. Install requirements:

```
    $ pip install -r requirements.txt
```


##### 3. Make migrations:

```
    $ cd times_site
    $ ./manage.py migrate
```

##### 4. Create super user:

```
    $ ./manage.py createsuperuser
```

##### 4. Runserver:

```
    $ ./manage.py runserver
```

Now, you can access:  http://127.0.0.1:8000

Or http://127.0.0.1:8000/admin

