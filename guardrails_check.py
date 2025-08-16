
#!/usr/bin/env python3
import os, json, subprocess, fnmatch, sys, re

PLAN_PATH = os.getenv("PLAN_PATH", "claude_code_plan.json")
PR_TITLE = os.getenv("PR_TITLE", "")
BASE = os.getenv("BASE_REF", "origin/main")
HEAD = os.getenv("HEAD_REF", "HEAD")

def load_plan():
    with open(PLAN_PATH, "r", encoding="utf-8") as f:
        return json.load(f)

def get_changed_files():
    try:
        merge_base = subprocess.check_output(["git","merge-base", BASE, HEAD], text=True).strip()
    except Exception:
        merge_base = BASE
    out = subprocess.check_output(["git","diff","--name-only", f"{merge_base}...{HEAD}"], text=True)
    return [l.strip() for l in out.splitlines() if l.strip()]

def match_any(path, patterns):
    return any(fnmatch.fnmatch(path, p) for p in patterns)

def main():
    plan = load_plan()
    editing = plan["guardrails"]["editing_policy"]
    allowed_globs = editing["allowed_files_patterns"]
    prohibited_globs = editing["prohibited_files_patterns"]
    immutable = set(editing.get("immutable_files", []))

    changed = get_changed_files()
    errors = []

    for f in changed:
        if f in immutable:
            errors.append(f"Immutable dosyaya dokunulmuş: {f}")
        if match_any(f, prohibited_globs):
            errors.append(f"Yasak desene uyan dosya değişikliği: {f}")

    for f in changed:
        if not match_any(f, allowed_globs):
            errors.append(f"Allowed kapsamı dışında değişiklik: {f}")

    if not re.search(r"\bE\d+-T\d+(?:-\d+)?\b", PR_TITLE or ""):
        errors.append("PR başlığında TASK_ID (örn. E3-T2-1) yok.")

    if errors:
        print("❌ Guardrails ihlalleri:")
        for e in errors:
            print(" -", e)
        sys.exit(1)
    else:
        print("✅ Guardrails geçti. Dosya sayısı:", len(changed))

if __name__ == "__main__":
    main()
