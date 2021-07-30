1.
```
docker compose up --build --exit-code-from fluent-bit
```
2. add `http://prometheus:9090` as a data source
3. import the `dashboard.json` as a dashboard in Grafana at `http://localhost:3000`
4. I like to run `docker stats` next to the `docker compose` pane


# clean up

without killing grafana set up

```
docker container prune -y
docker volume rm hack_prometheus-data hack_haproxy-log hack_fluent-bit-data
```
