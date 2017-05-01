## do min env - Phoenix

*Current Version: 0.1*

**do min env** stands for **Docker Minimal Environments**. It's a series of script/config files/stuff that will make Phoenix applications development easier. It uses Docker under the hood.

The idea was born after having some issues with LaraDock (for Laravel): I really like the project but I wanted something more *minimalistic*.

I followed the simple principle of **"one command to get everything up and running"**. This could be useful especially if you often make experiments, or you just want to work without worrying to much of the underlying development environment configuration.

### Included

* **Elixir 1.3.4**;
* **PostgreSQL 9.5**;
* **Phoenix**;
* **inotify-tools** (for code live re-compile);

There are also some aliases you will be able to use:

* `mix`;

### Prerequisites

* Docker (tested with 1.12);
* Docker Compose (tested with 1.12.0);

Yup, nothing more!

### How to Use It:

* clone this repository;
* run the ./init script;

After the bootstrap **you will find yourself in a new shell**. In this shell you will use all the "dockerized" tools provided here.

**If this is your first time, a new Phoenix project will be automatically created in the `project` folder.** Your project will live there! Also, the necessary Docker images will be downloaded.

If everything goes well, you will read a confirmation message.

**The application will be available at `http://localhost:4000`.**

NOTE: on first time build you will probably have to wait a minute, in order to let Phoenix compile everything.
