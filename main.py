import random
from pathlib import Path


def main():
    folder = Path("data")
    folder.mkdir(exist_ok=True)
    number = random.randint(1, 5)
    fname = folder / f"{number}.txt"
    fname.write_text(f"Hello {number}\n")


if __name__ == "__main__":
    main()
