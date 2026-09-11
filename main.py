import subprocess


def main():
    subprocess.run(["pwd"])
    subprocess.run(["./bin/server.sh", "console"])


if __name__ == "__main__":
    main()
