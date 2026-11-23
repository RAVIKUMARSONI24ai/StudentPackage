# ==============================================================================
# EXPERIMENT 11: Writing R Packages
# Demonstration & Automated Verification Script
# ==============================================================================

pkg_path <- "D:/StudentPackage"
setwd(pkg_path)

cat("====================================================================\n")
cat(" EXPERIMENT 11: WRITING R PACKAGES\n")
cat(" Aim: Understand structure of an R package & develop custom package\n")
cat("====================================================================\n\n")

# Step 1 & 2: Load devtools & roxygen2
cat("[Step 1 & 2] Loading devtools & roxygen2...\n")
library(devtools)
library(roxygen2)

# Step 3 & 4: Generate documentation (Exercise 4)
cat("\n[Step 3] Generating documentation with roxygen2::roxygenise()...\n")
roxygen2::roxygenise(pkg_path)
cat("Documentation successfully generated in 'man/' and 'NAMESPACE' updated.\n")

# Step 5: Build Package
cat("\n[Step 5] Building package StudentPackage...\n")
tar_file <- devtools::build(pkg_path)
cat("Built package:", tar_file, "\n")

# Step 6: Install Package Locally
cat("\n[Step 6] Installing package StudentPackage...\n")
devtools::install(pkg_path, reload = FALSE, quiet = FALSE)
cat("Package StudentPackage successfully installed!\n")

# Step 7: Load and Test Package
cat("\n[Step 7] Loading StudentPackage library...\n")
library(StudentPackage)

cat("\n--------------------------------------------------------------------\n")
cat(" EXECUTION & VERIFICATION OF EXPERIMENTAL OUTPUTS\n")
cat("--------------------------------------------------------------------\n")

cat("\n[1] Main Program: addNumbers(10, 20)\n")
out_add1 <- addNumbers(10, 20)
print(out_add1)

cat("\n[2] Exercise 1 (Calculator Functions):\n")
cat("add(10, 5)      -> "); print(add(10, 5))
cat("subtract(10, 5) -> "); print(subtract(10, 5))
cat("multiply(10, 5) -> "); print(multiply(10, 5))
cat("divide(10, 5)   -> "); print(divide(10, 5))

cat("\nTesting division by zero error handling:\n")
tryCatch({
  divide(10, 0)
}, error = function(e) {
  cat("Caught expected error:", conditionMessage(e), "\n")
})

cat("\n[3] Exercise 2 (Statistics Functions):\n")
data_vec <- c(10, 20, 30, 40, 50)
cat("Input vector:", paste(data_vec, collapse = ", "), "\n")
cat("mean_value(data) -> "); print(mean_value(data_vec))
cat("variance(data)   -> "); print(variance(data_vec))
cat("std_dev(data)    -> "); print(std_dev(data_vec))

cat("\n[4] Exercise 3 (Multiple Functions):\n")
cat("addNumbers(10, 20)      -> "); print(addNumbers(10, 20))
cat("subtractNumbers(10, 20) -> "); print(subtractNumbers(10, 20))
cat("multiplyNumbers(10, 20) -> "); print(multiplyNumbers(10, 20))

cat("\n[5] Exercise 4 (Roxygen2 Documentation Verification):\n")
cat("Exported functions in NAMESPACE:\n")
cat(readLines(file.path(pkg_path, "NAMESPACE")), sep = "\n")

cat("\n[6] Running testthat test suite:\n")
testthat::test_dir(file.path(pkg_path, "tests", "testthat"))

cat("\n====================================================================\n")
cat(" RESULT: Custom R package 'StudentPackage' was successfully\n")
cat("         created, documented, built, installed, and executed.\n")
cat("====================================================================\n")
