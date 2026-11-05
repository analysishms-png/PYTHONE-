import re

with open(r'C:\Analysis\HMS_py\LOGIC\VISUALBASIC\fdWalkInEntry.frm', 'r', encoding='latin-1', errors='replace') as f:
    content = f.read()

# Find all SQL queries (simplified pattern)
sql_patterns = re.findall(r'SELECT\s+[^;]+?FROM\s+\w+[^;]*', content, re.IGNORECASE)
print(f'SELECT queries found: {len(sql_patterns)}')
for i, sql in enumerate(sql_patterns[:15]):
    print(f'--- SQL {i+1} ---')
    print(sql[:500])
    print()

# Find INSERT/UPDATE/DELETE
dml_patterns = re.findall(r'(INSERT\s+INTO|UPDATE\s+|DELETE\s+FROM)\s+\w+[^;]*', content, re.IGNORECASE)
print(f'DML statements found: {len(dml_patterns)}')
for i, dml in enumerate(dml_patterns[:15]):
    print(f'--- DML {i+1} ---')
    print(dml[:500])
    print()

# Find button click handlers
btn_handlers = re.findall(r'(Private Sub \w+_UnknownEvent_\w+)', content)
print(f'Button/Event handlers: {len(btn_handlers)}')
for h in btn_handlers[:30]:
    print(f'  {h}')

# Find table references
table_refs = re.findall(r'(?:FROM|JOIN|UPDATE|INSERT INTO|DELETE FROM)\s+(\w+)', content, re.IGNORECASE)
print(f'\nTable references: {len(set(table_refs))}')
for t in sorted(set(table_refs)):
    print(f'  {t}')

# Find control names (Txt, Cmd, DG, FG, etc)
control_pattern = re.findall(r'Begin (?:TextBox|BtnEnh|DataGrid|MSFlexGrid|ComboBox|Label|CheckBox|OptionButton|Frame|PictureBox) (\w+)', content)
print(f'\nControls: {len(set(control_pattern))}')
for c in sorted(set(control_pattern)):
    print(f'  {c}')

# Find public variables/functions
public_vars = re.findall(r'(Public|Private)\s+(Function|Sub|Property)\s+(\w+)', content)
print(f'\nPublic/Private Functions/Subs: {len(public_vars)}')
for p in public_vars[:30]:
    print(f'  {p[0]} {p[1]} {p[2]}')

# Find form-level variables
form_vars = re.findall(r'(Private|Public|Dim)\s+(\w+)\s+As\s+\w+', content)
print(f'\nForm-level variable declarations: {len(form_vars)}')
for v in form_vars[:30]:
    print(f'  {v[0]} {v[1]}')