cp -r /data/repo/Tests/IntegrationTests* /app
echo $(ls  /app)
python -m pytest /app