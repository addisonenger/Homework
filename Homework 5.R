matrix1 = matrix(c(7, 9, 12, 2, 4, 13), nrow = 2, ncol = 3, byrow = T)
matrix2 = matrix(c(1, 7, 12, 19, 2, 8, 13, 20, 3, 9, 14, 21), nrow = 3, ncol = 4, byrow = T)

matrix1
matrix2

matrix3 = matrix1 %*% matrix2
matrix3

id = c(1, 2, 3, 4, 5)
name = c('Peter', 'Amy', 'Ryan', 'Gary', 'Michelle')
salary = c(623.3, 515.2, 611.0, 729.0, 843.25)

df = data.frame(id, name, salary)
df

department = c('accounting', 'HR', 'IT', 'executives', 'marketing')

df1 = cbind(df, department)
df1

df1[c(1,3,5), c('name', 'salary')]

df2 = df1[c(1,4,5), c('salary')]
df2
barplot(df2, main = 'Salaries', xlab = 'Employee', ylab = '$$$', 
        names.arg = c('Peter', 'Gary', 'Michelle'))

a = max(salary)
b = min(salary)
c = median(salary)
sal = c(a, b, c)

percentage = round(100*(sal/sum(sal)))

pie(sal, main = 'Salary', labels = paste(c('max', 'min','median'), sep = ' ', 
                                         percentage, '%'))

