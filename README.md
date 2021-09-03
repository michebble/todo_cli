A cli tool for tracking todos in a txt file, with timestamps for when they were added and completed

Todos can be added with the `new` command

```
./bin/todo new "Buy milk"
=> Task added.
```

Todos can be listed with the `list` command

```
./bin/todo list
=>  0 - Buy Milk
=> Created : 2021-09-03 10:22:56 +1000
```

Todos can be completed with the `done` command and providing the number of the task to be completed

```
./bin/todo done 0
=> Task 0 completed
```

when running `list` again the completed taks will be displayed as so

```
./bin/todo list
=>  0 - Buy Milk
=> Created : 2021-09-03 10:22:56 +1000
=> Completed : 2021-09-03 10:27:48 +1000
```
