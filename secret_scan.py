
#!/usr/bin/env python3
import re, sys, subprocess

PATTERNS = [
    r"AKIA[0-9A-Z]{16}",
    r"-----BEGIN PRIVATE KEY-----",
    r"sk_live_[0-9a-zA-Z]{10,}",
    r"supabase_service_role"
]

def get_changed_files():
    out = subprocess.check_output(["git","diff","--name-only","origin/main...HEAD"], text=True)
    return [l.strip() for l in out.splitlines() if l.strip()]

def scan(path):
    try:
        with open(path, "r", encoding="utf-8", errors="ignore") as f:
            txt = f.read()
        for pat in PATTERNS:
            if re.search(pat, txt):
                return pat
    except Exception:
        return None
    return None

def main():
    files = get_changed_files()
    bad = []
    for f in files:
        pat = scan(f)
        if pat:
            bad.append((f, pat))
    if bad:
        print("❌ Gizli anahtar iması bulundu:")
        for f, p in bad:
            print(f" - {f}: {p}")
        sys.exit(2)
    print("✅ Secret scan temiz.")

if __name__ == "__main__":
    main()
