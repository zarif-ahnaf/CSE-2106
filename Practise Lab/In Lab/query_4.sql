SELECT train.train_name,SUM(tickets.price) from train natural join tickets group by train.train_name;