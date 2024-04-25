from confluent_kafka import Consumer

c = Consumer({
    'bootstrap.servers': 'localhost:29092',
    'group.id': 'mygroup',
    'auto.offset.reset': 'earliest'
})

c.subscribe(["server1.DEBEZIUM.CUSTOMERS"])

try:
    while True:
        msg = c.poll(1.0)

        if msg is None:
            continue
        if msg.error():
            print("Consumer error: {}\n".format(msg.error()))
            continue
        print('Received message: {}\n'.format(msg.value().decode('utf-8')))
except KeyboardInterrupt:
    print('!!FINISHED!!')
    c.close()