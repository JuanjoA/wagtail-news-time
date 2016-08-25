## Fork updated of [wagtail-screencast-hellowagtail] (https://github.com/muthuridennis/wagtail-screencast-hellowagtail)

Tested ok with python 3.5, django 1.10 and wagtail 1.6

### Include bdd db.sqlite3 with data, for rapid view
(no migrate needed, and superuser is *admin* with password *admin*, but can create another superuser)

### How to use:


##### 1. Clone repository:

```
    $ git clone https://github.com/JuanjoA/wagtail-news-time.git
```

##### 2. Create virtualenv and activate:
```
    $ cd wagtail-news-time/
    $ virtualenv --python=python3.5 env
    $ source env/bin/activate
```


##### 3. Install requirements:

```
    $ pip install -r requirements.txt
```
Note: Pillow installation require compilation, and some system dependencies:

[http://pillow.readthedocs.io/en/stable/installation.html] (http://pillow.readthedocs.io/en/stable/installation.html)

* Ubuntu example:
```
    $ apt-get install -y build-essential python3 python3-dev python3-pip
    $ apt-get install -y libjpeg-dev libtiff-dev zlib1g-dev libfreetype6-dev liblcms2-dev
```

##### 4. Make migrations:

```
    $ cd times_site
    $ ./manage.py migrate
```

##### 5. Create super user:

```
    $ ./manage.py createsuperuser
```

##### 6. Runserver:

```
    $ ./manage.py runserver
```

Now, you can access:  http://127.0.0.1:8000

Or http://127.0.0.1:8000/admin

