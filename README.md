
```
docker build -t tmp-proxysql-example2 .
```

```
docker run -d -p 6032:6032 -p 6033:6033 tmp-proxysql-example2
```

```
docker exec -it tmp-proxysql-example2 bash
```

```
mysql -u admin -p -h 127.0.0.1 -P 6032 --prompt='ProxySQLAdmin> '
```

admin

```
SELECT * FROM global_variables;
```
