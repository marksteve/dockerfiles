docker-mopidy
=============

Docker image for Mopidy (http://www.mopidy.com)

Usage
-----

1. Build docker image
  
  ```sh
  $ ./build
  ```

2. Create mopidy dirs

  ```sh
  $ mkdir share media
  ```

3. Initialize mopidy files by running it the first time

  ```sh
  $ ./mopidy
  ```

4. Add songs to `/media` then update tags

  ```sh
  $ ./mopidy local scan
  ```

5. Run `./mopidy` again and start playing some beats!
