echo "BUILD START"
python3.8 -m pip install -r requirements.txt --no-cache-dir
python3.8 manage.py makemigrations --noinput
python3.8 manage.py migrate --noinput
python3.8 manage.py collectstatic --noinput --clear
echo "BUILD END"