import re

with open(r'C:\Analysis\HMS_py\LOGIC\VISUALBASIC\HMS.bas', 'r', encoding='latin-1', errors='replace') as f:
    content = f.read()

# Find all menu click handlers
menu_handlers = re.findall(r'Private Sub (\w+_Click\([^)]*\))', content)
print(f'Menu click handlers found: {len(menu_handlers)}')

# Find form instantiations (New FormName)
form_instantiations = re.findall(r'global_52 = New (\w+)', content)
print(f'Form instantiations found: {len(form_instantiations)}')
unique_forms = sorted(set(form_instantiations))
print('Unique forms instantiated:')
for f in unique_forms:
    print(f'  {f}')

# Find GRepFormName assignments
grep_names = re.findall(r'GRepFormName = "([^"]+)"', content)
print(f'\nGRepFormName values: {len(grep_names)}')
for g in sorted(set(grep_names)):
    print(f'  {g}')

# Find all menu names (mnu*)
menu_names = re.findall(r'(mnu\w+)', content)
print(f'\nUnique menu names: {len(set(menu_names))}')
for m in sorted(set(menu_names)):
    print(f'  {m}')

# Find all global variables
global_vars = re.findall(r'(global_\d+)', content)
print(f'\nGlobal variables: {len(set(global_vars))}')
for g in sorted(set(global_vars)):
    print(f'  {g}')

# Find MemVar patterns
mem_vars = re.findall(r'(MemVar_[0-9A-F]+)', content)
print(f'\nMemVars: {len(set(mem_vars))}')
for m in sorted(set(mem_vars))[:20]:
    print(f'  {m}')