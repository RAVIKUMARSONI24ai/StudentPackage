# ==============================================================================
# STUDENTPACKAGE: R DEBUGGING GUIDE & DEMO
# ==============================================================================
# This script demonstrates essential R debugging techniques:
# 1. traceback() - Inspecting error call stacks
# 2. tryCatch() - Graceful error diagnostics
# 3. browser() - Setting interactive breakpoints
# 4. debug() / undebug() - Flagging functions for step-by-step execution
# ==============================================================================

library(StudentPackage)

cat("====================================================================\n")
cat(" R PACKAGE DEBUGGER DEMO: StudentPackage\n")
cat("====================================================================\n\n")

# ------------------------------------------------------------------------------
# 1. ERROR TRACEBACK & CALL STACK INSPECTION
# ------------------------------------------------------------------------------
cat("[1] Demonstrating error handling & call stack inspection:\n")

safe_divide <- function(x, y) {
  cat(sprintf("Attempting to divide %g by %g...\n", x, y))
  divide(x, y)
}

tryCatch({
  safe_divide(10, 0)
}, error = function(e) {
  cat("\n--> Caught Runtime Error:", conditionMessage(e), "\n")
  cat("--> Call Stack (where the error originated):\n")
  print(sys.calls())
})

# ------------------------------------------------------------------------------
# 2. STEPPING & BREAKPOINT DEMO USING browser()
# ------------------------------------------------------------------------------
cat("\n--------------------------------------------------------------------\n")
cat("[2] How to use interactive breakpoints with browser():\n")
cat("In your R code, place 'browser()' where you want execution to pause:\n\n")

cat("   debug_add <- function(a, b) {\n")
cat("     cat('Before calculation\\n')\n")
cat("     # browser()  <-- Uncomment to pause and enter browser mode\n")
cat("     res <- a + b\n")
cat("     return(res)\n")
cat("   }\n\n")

cat("Inside the browser prompt (Browse[1]>):\n")
cat("  - 'n'    : Step to next line\n")
cat("  - 's'    : Step into function call\n")
cat("  - 'c'    : Continue execution\n")
cat("  - 'Q'    : Quit debugging\n")
cat("  - 'ls()' : List local variables\n")
cat("  - 'print(a)' : Inspect variable values\n\n")

# ------------------------------------------------------------------------------
# 3. USING debug() AND undebug() ON PACKAGE FUNCTIONS
# ------------------------------------------------------------------------------
cat("--------------------------------------------------------------------\n")
cat("[3] Using debug() / undebug():\n")
cat("To debug an existing package function whenever it is called:\n\n")
cat("  debug(StudentPackage::divide)\n")
cat("  divide(10, 2)    # Steps through divide() line by line\n")
cat("  undebug(StudentPackage::divide) # Turns off debugging\n\n")

# ------------------------------------------------------------------------------
# 4. VERIFYING PACKAGE FUNCTIONS
# ------------------------------------------------------------------------------
cat("--------------------------------------------------------------------\n")
cat("[4] Running sample inputs to verify healthy execution:\n")
cat("  addNumbers(15, 25)  =", addNumbers(15, 25), "\n")
cat("  subtract(50, 15)    =", subtract(50, 15), "\n")
cat("  multiply(6, 7)      =", multiply(6, 7), "\n")
cat("  divide(100, 4)      =", divide(100, 4), "\n")
cat("  mean_value(1:10)    =", mean_value(1:10), "\n")
cat("  variance(1:10)      =", variance(1:10), "\n")
cat("  std_dev(1:10)       =", std_dev(1:10), "\n")

cat("\n====================================================================\n")
cat(" DEBUGGER DEMO COMPLETED SUCCESSFULLY!\n")
cat("====================================================================\n")
