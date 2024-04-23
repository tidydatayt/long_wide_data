
# read data
library("readxl")
my_data <- read_excel("data_example.xlsx")

# print out the data table
print(my_data)


# long data format
t.test(minutes_spent_on_App~Conditions, data=my_data,var.equal = TRUE)

# wide data format
data_A<-my_data[my_data$Conditions=='A',]$minutes_spent_on_App
data_B<-my_data[my_data$Conditions=='B',]$minutes_spent_on_App

print(data_A)
print(data_B)

t.test(data_A,data_B,var.equal = TRUE)


