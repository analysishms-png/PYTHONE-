path = r"C:\Analysis\HMS_py\MENU_MODULE_CHECKLIST.md"
lines = open(path, "r", encoding="utf-8").readlines()
for i, line in enumerate(lines):
    if "| 260 | E | Form  C |" in line:
        lines[i] = "| 260 | E | Form  C | FDOMenu | AEDP | — | DONE | Form C |\n"
    if "| 261 | E | Tourism Form 1 |" in line:
        lines[i] = "| 261 | E | Tourism Form 1 | FDOMenu | AEDP | — | DONE | Tourism Form 1 |\n"
    if '| 262 | E | Tourism Form 2 |' in line:
        lines[i] = '| 262 | E | Tourism Form 2 | FDOMenu | AEDP | — | DONE | Tourism Form 2 |\n'
    if '| 263 | E | Tourism Form 5 |' in line:
        lines[i] = '| 263 | E | Tourism Form 5 | FDOMenu | AEDP | — | DONE | Tourism Form 5 |\n'
    if '| 265 | E | Tourism Form 6 |' in line:
        lines[i] = '| 265 | E | Tourism Form 6 | FDOMenu | AEDP | — | DONE | Tourism Form 6 |\n'
    if '| 266 | E | Tourism Form 4 |' in line:
        lines[i] = '| 266 | E | Tourism Form 4 | FDOMenu | AEDP | — | DONE | Tourism Form 4 |\n'
    if '| 267 | E | Luxury Tax Report |' in line:
        lines[i] = '| 267 | E | Luxury Tax Report | FDOMenu | AEDP | — | DONE | Luxury Tax Report |\n'
    if '| 268 | E | Monthly Return |' in line:
        lines[i] = '| 268 | E | Monthly Return | FDOMenu | AEDP | — | DONE | Monthly Return |\n'
    if '| 269 | E | L.T. FORM II |' in line:
        lines[i] = '| 269 | E | L.T. FORM II | FDOMenu | AEDP | — | DONE | L.T. FORM II |\n'
    if '| 270 | E | L.T. FORM IV |' in line:
        lines[i] = '| 270 | E | L.T. FORM IV | FDOMenu | AEDP | — | DONE | L.T. FORM IV |\n'
open(path, "w", encoding="utf-8").writelines(lines)
print("Updated checklist: Tourism Forms, Form C -> DONE")
