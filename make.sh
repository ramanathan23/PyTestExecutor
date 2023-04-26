echo $(ls /data) 
echo $(ls /data/repo) 
cp -r /data/repo/* /app
echo $(ls  /app)
python -m pytest /app/tests/integrationtests