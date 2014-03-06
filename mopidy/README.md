docker-mopidy
=============

Docker image for Mopidy (http://www.mopidy.com)

Usage
-----

1. Build docker image.

  ```sh
  $ sudo docker build -rm -t marksteve/mopidy .
  ```

2. Initialize mopidy volume which keeps library files and other states.

  ```sh
  $ ./mopidy-volume
  ```

3. Make `./mopidy-docker` available in your `$PATH`.

  ```sh
  $ ln -s `pwd`/mopidy-docker /usr/local/bin/
  ```

4. Set working directory to where your music files are.

  ```sh
  $ cd ~/Music
  ```

5. Scan for music files.

  ```sh
  $ mopidy-docker mopidy local scan
  ```

6. Run mopidy server.

  ```sh
  $ mopidy-docker
  ```
