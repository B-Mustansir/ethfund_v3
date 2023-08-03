echo "BUILD START"
python -m pip install -r requirements.txt --no-cache-dir
python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py collectstatic --noinput --clear
echo "BUILD END"