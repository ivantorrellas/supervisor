# Supervisor

Supervisor is a tool to help you keep your processes up and running.

### Usage
```bash
./supervisor [Proccess Name] [Seconds] [Attemps] [Interval]
```
* [Process Name] = Name of the process to supervise.
* [Seconds] = Seconds to wait between attempts to restart service.
* [Attempts] = Number of attempts before giving up.
* [Interval] = Check interval in seconds.

### random-number.sh

random-number.sh is a script for testing the supervisor.
### Example
```bash
./supervisor random-number.sh 3 3 3
```
The random-number.sh will generate a random number between 1 and 99 and will start a cycle every 1 second echoing a "Hello" message each time the number is lower than 90 and if the random number is higher than 90 it'll echo a dying message and kill the cycle.

### Usage
The random-number.sh script can be tested changing the threshold number and the time interval in seconds. Pass both values as parameters.
```bash
./random-number.sh [threshold number 1-99] [interval seconds]
```


### Example
```bash
./random-number.sh 50 0.5
```
