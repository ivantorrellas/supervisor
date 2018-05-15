# Supervisor

Supervisor is a tool to help you keep your processes up and running.

### Usage
```bash
./supervisor [Proccess Name] [Seconds] [Attemps] [Interval]
````
Process Name = Name of the process to supervise
Seconds = Seconds to wait between attempts to restart service
Attemps = Number of attempts before giving up
Interval = Check interval in seconds

### test-random.sh

test-random.sh is a script for testing the supervisor.
### Usage
```bash
$ ./supervisor test-random.sh 3 3 3
````
The test-random.sh will generate a random number between 1 and 99 and will start a cycle echoing a "Hello" message each time the number is lower than 90 and if the number is higher than 90 it'll echo a dying message and kill the cycle.

The random-number.sh script can be tested changing the threshold number and the time interval.
#### Test random-number.sh
```bash
$ ./random-number.sh 50 1
````
