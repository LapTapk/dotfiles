set debuginfod enabled on
source /home/oleg/git/pwndbg/gdbinit.py

set context-clear-screen on
set follow-fork-mode parent
set context-sections regs disasm stack backtrace

source /home/oleg/git/splitmind/gdbinit.py
python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="Main")
  .right(display="stack", size="30%")
  .right(of="main", display="disasm", size="60%")
  .below(of="disasm", display="legend", size="50%")
  .show("regs", on="legend")
  .below(of="main", display="backtrace", size="50%")
  .above(of="backtrace", cmd="python", size="50%")
).build(nobanner=True)
end
set context-stack-lines 35

