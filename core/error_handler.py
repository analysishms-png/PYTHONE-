"""Error Handler Module - VB6 On Error Goto Pattern Port

Port of VB6 error handling pattern to Python.
VB6 Pattern (FaAdjust.frm Form_Load):
- On Error Goto loc_1328954
- Error restoration with RollbackTrans
- Global error handler: Proc_183_57_104AA84
- Specific error numbers for different paths
"""

import traceback
from PyQt6.QtWidgets import QMessageBox


class ErrorHandler:
    """Port of VB6 error handling pattern to Python."""
    
    def __init__(self, parent=None):
        self.parent = parent
        self.error_count = 0
        self.last_error = None
    
    def handle(self, error_obj, context="", rollback=False):
        """Handle error like VB6 On Error Goto."""
        self.error_count += 1
        self.last_error = error_obj
        
        # Format error message like VB6
        err_msg = f"Error {self.error_count}: {context}"
        if hasattr(error_obj, '__str__'):
            err_msg += f" - {str(error_obj)}"
        
        # Show message like VB6 MsgBox
        if self.parent:
            QMessageBox.critical(self.parent, "Error", err_msg)
        else:
            QMessageBox.critical(None, "Error", err_msg)
        
        # Log traceback like VB6 error handler
        log = traceback.format_exc()
        
        # Rollback if needed (equivalent of RollbackTrans)
        if rollback:
            # Call equivalent of unk_4D7B20.RollbackTrans
            # TODO: Implement rollback based on active connection
            pass
        
        # Call error handler equivalent of Proc_183_57_104AA84
        self._log_error(log)
        
        return False
    
    def _log_error(self, log_text):
        """Log error like VB6 Proc_183_57_104AA84."""
        # Write to log file or monitoring system
        with open("error_log.txt", "a") as f:
            f.write(f"[{traceback.format_datetime(__import__('datetime').datetime.now())}] {log_text}\n")
        
        # Also print to console
        print(f"ERROR LOG: {log_text}")


# Convenience function for quick error handling
def handle_error(error_obj, context="", parent=None, rollback=False):
    """Quick error handling function."""
    eh = ErrorHandler(parent)
    return eh.handle(error_obj, context, rollback)