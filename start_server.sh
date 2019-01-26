docker run --mount type=bind,source=/home/peter/dev/sandbox/kaihatu_meeting,target=/usr/src/app -p 127.0.0.1:8000:8000 -it practise_web:0.1 python manage.py runserver 0:8000
