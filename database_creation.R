# ============================================
# STUDENT DATASET CREATION
# ============================================

# Names of the students
student_names <- c(
  "Name1", "Name2", "Name3", "Name4", 
  "Name5", "Name6", "Name7", "Name8", 
  "Name9", "Name10", "Name11", "Name12", 
  "Name13", "Name14", "Name15", "Name16", 
  "Name17", "Name18", "Name19", "Name20
)

# Student ID 
student_numbers <- c(
  20951087, 20951088, 20951089, 20951090, 
  20951091, 20951092, 20951093, 20951094, 
  20951095, 20951096, 20951097, 20951098, 
  20951099, 20951100, 20951101, 20951102, 
  20951103, 20951104, 20951105, 20951106
)

# All students are from the same course
courses <- rep("Computer Science", 20)

# All students are currently in 3rd year
year_level <- rep("3rd Year", 20)

# Subjects taken by all students
# Note: We are combining multiple subject codes into one string using paste()
subjects_list <- c("1TWRITE-ITE", "2INTCALC", "2PROBSTAT", "6ATF", 
                   "6IMODSIM", "6IMSOFTENG", "6ADET", "6IASEC")

# Repeat the same subject string for all students
subjects <- rep(paste(subjects_list, collapse = ", "), 20)

# ============================================
# CREATE DATA FRAME
# ============================================

# Combine all vectors into one data frame
stud.data <- data.frame(
  Student_Name = student_names, 
  Student_Number = student_numbers, 
  Course = courses, 
  Year_Level = year_level, 
  Subject = subjects, 
  stringsAsFactors = FALSE  # Keeps text columns as characters (not factors)
)

# ============================================
# VIEW AND CHECK OUTPUT
# ============================================

# Print the whole table in the console (may wrap if console is narrow)
print(stud.data)

# View in spreadsheet layout (recommended for full view)
View(stud.data)

# Check structure (column names, types, sample values)
str(stud.data)

# Show summary (number ranges, unique counts, etc.)
summary(stud.data)
