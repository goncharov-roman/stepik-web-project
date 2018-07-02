sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/gunicorn.py /etc/gunicorn.d/test
#sudo gunicorn -c /etc/gunicorn.d/test hello:app
sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:app
sudo gunicorn -c /home/box/web/etc/gunicorn-django.py ask.wsgi:application
