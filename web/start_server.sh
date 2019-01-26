docker run --mount type=bind,source=$(pwd),target=/usr/src/app -p 127.0.0.1:8000:8000 -it practise_web:0.1 python manage.py runserver 0:8000
