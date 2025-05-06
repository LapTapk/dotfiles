set debuginfod enabled on
source /home/oleg/git/pwndbg/gdbinit.py

set context-sections regs disasm stack ghidra

source /home/oleg/git/splitmind/gdbinit.py
python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="Main")
  .right(display="stack", size="30%")
  .above(display="legend", size="25")
  .show("regs", on="legend")
  .right(of="main", display="disasm", size="50%", banner="top")
  .below(of="disasm", display="ghidra", size="50%")
).build(nobanner=True)
end
