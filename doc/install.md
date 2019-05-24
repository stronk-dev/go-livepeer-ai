# Installing Livepeer
### Option 1: Download executables
The easiest way to install Livepeer is by downloading the `livepeer` and `livepeer_cli` executables from the [release page on Github](https://github.com/livepeer/go-livepeer/releases).

1. Download the packages for your OS - darwin for Macs and linux for linux.
2. Untar them and optionally move the executables to your PATH.

### Option 2: Build from source
You can also build the executables from scratch.

1. If you have never set up your Go programming environment, do so according to Go's [Getting Started Guide](https://golang.org/doc/install).

2. You can fetch the code running `go get github.com/livepeer/go-livepeer/cmd/livepeer` in terminal.

3. You need to install `ffmpeg` as a dependency.  Run `./install_ffmpeg.sh`.  This will install the dependencies in `~/compiled`.  You need to have `pkg-config` installed.

4. You can now run `PKG_CONFIG_PATH=~/compiled/lib/pkgconfig go build ./cmd/livepeer/livepeer.go` from the project root directory. To get latest version, `git pull` from the project root directory.

5. To run tests in locall run `./test.sh`, to run in docker container run `./test_docker.sh`


### Option 3: Using Docker
If you prefer to use [the official livepeer docker image](https://hub.docker.com/r/livepeer/go-livepeer) by simply pulling it

```bash
docker pull livepeer/go-livepeer
```

**Or** if you'd like to modify the code or try something out, you can build the image using the `Dockerfile.debian` in the repo

```bash
# clone this repo
git clone https://github.com/livepeer/go-livepeer.git

# do the modification you'd like to do the code
# ...

# have the repo tags exported to file
echo $(git describe --tags) > .git.describe

# in repo root folder
docker build -t livepeerbinary:debian -f docker/Dockerfile.debian .

# test it
docker run -it livepeerbinary:debian livepeer -version
```

### Option 4: Private testnet deployments

To setup a full Livepeer network deployment, try out our [test-harness](https://github.com/livepeer/test-harness) which automates the process of deploying the Livepeer developer testnet. This includes the Livepeer solidity contracts along with secondary services like a full metrics suite for debugging and a fully working Livepeer nodes running locally or on Google Cloud Platform (GCP).

Read more about GCP deployments [here](https://github.com/livepeer/test-harness/blob/master/docs/demo.md).