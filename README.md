
## Master and Workers Simulation

This project simulates a regular working shift having master processes that act as
supervisors for workers. Each worker is spawned and expires after a random amount
of milliseconds.

After all the workers of a given master process have completed, the master process
then has completed its job. he supervisor then spawns another master process, which
in turn spawns more worker processes until they are done.

All of this is done asynchronously, and it provides some good insight of how erlang
processes work. Setting moderate values for master and worker processes provides
interesting results.


## Learning Topics

This sample project has been created for learning purposes, and has a few interesting
things that can serve as a small introduction to new users to erlang:

- Process monitoring
- Process links
- Message Passing
- Using receive/after
- Module Macros
- Records used for state
- Module type and spec declarations
- Edoc tags and comments
- Creating documentation using edoc
- Overview page for edoc
- Random number generation
- Sample escript script
- Using Emakefile


## Usage

Edit `src/system.erl` and adjust the `MASTERS` and `WORKERS` macro values to define how
many master processes to spawn, and how many workers each master process spawns.

To define the number of milliseconds each worker runs, adjust the `TIMEOUT` macro value.

Build:

`make`

Build documentation:

`make docs`

Run:

`make run`

Cleanup:

`make clean`


## Random number generation

As a side note, there is also a pseudo random number generator built using processes,
which uses the erlang `random` module.

Due to referential transparency, it's a bit tough to create random numbers in erlang, 
in the code is a simple yet effective approach to random numbers using a process
that keeps the internal random state to generate random numbers.

Originally, `random:uniform/0` uses the process dictionary, which means that if the 
function is called multiple times on the same process, it will inherently create the
same random number, hence the process approach implemented herein, which
creates different numbers regardless from the process on wich they are requested.

## License

MIT