import csv
import sys
from pathlib import Path


def main(path_str: str) -> None:
    path = Path(path_str)
    if not path.exists():
        print(f"File not found: {path}")
        sys.exit(1)

    # Read CSV using Python's CSV parser to handle quotes and commas correctly
    with path.open('r', newline='', encoding='utf-8') as f:
        reader = csv.reader(f)
        rows = list(reader)

    if not rows:
        return

    # Determine number of columns from the first row
    num_cols = len(rows[0])
    if num_cols < 2:
        # Nothing to do if single (or zero) column
        return

    # Build unique delimiters between columns: ||1||, ||2||, ...
    delims = [f"||{i}||" for i in range(1, num_cols)]  # length = num_cols - 1

    # Convert rows to lines with unique delimiters
    lines = []
    for row in rows:
        # Pad or trim row to expected number of columns for safety
        if len(row) < num_cols:
            row = row + [""] * (num_cols - len(row))
        elif len(row) > num_cols:
            row = row[:num_cols]

        # Join values inserting the unique delimiter between each column
        parts = []
        for idx, val in enumerate(row):
            parts.append(val)
            if idx < num_cols - 1:
                parts.append(delims[idx])
        lines.append(''.join(parts))

    # Write back to the same file
    with path.open('w', newline='\n', encoding='utf-8') as f:
        f.write('\n'.join(lines))


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python scripts/unique_delims.py <path-to-Data.txt>")
        sys.exit(2)
    main(sys.argv[1])

