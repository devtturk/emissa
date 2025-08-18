from pathlib import Path
import sys

sys.path.append(str(Path(__file__).resolve().parents[1]))
from secret_scan import scan, PATTERNS


def test_scan_detects_secret(tmp_path):
    secret_file = tmp_path / "secret.txt"
    secret_file.write_text("AWS key: AKIA1234567890ABCDEF")
    assert scan(str(secret_file)) == PATTERNS[0]


def test_scan_returns_none_for_safe_content(tmp_path):
    safe_file = tmp_path / "safe.txt"
    safe_file.write_text("Nothing to see here.")
    assert scan(str(safe_file)) is None
