- https://mogile.web.fc2.com/redis/redis500/commands/scan.html
- 使い方。1000件ずつ走査し、次のカーソルの番号を指定していく
```
scan 0 match orderbook* count 1000
1) "8804"
2)  1) "orderbook:abc"
    2) "orderbook:abc222"
    
scan 8804 match orderbook* count 1000
1) "7538"
2)  1) "orderbook:abc333"
    2) "orderbook:abc444"

```
