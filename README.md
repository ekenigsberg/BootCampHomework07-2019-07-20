# BootCampHomework07-2019-07-20

## Data Engineering
![Schema Screenshot](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/QuickDBD-Free%20Diagram.png)
* [Live Link to ERD](https://app.quickdatabasediagrams.com/#/d/FCdbgc)
* Input: [Schema for QuickDBD](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/schema.txt)
* Output: [PostgreSQL to Create Schema](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/QuickDBD-export.sql)

## Data Analysis
* [Completed SQL Queries](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/queries.sql)
* Screenshots of **queries and results** follow.
1. List the following details of each employee: employee number, last name, first name, gender, and salary.
   ![01-employees](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/01-employees.png)
2. List employees who were hired in 1986.
   ![02-1986hires](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/02-1986hires.png)
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
   ![03-managers](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/03-managers.png)
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
   ![04-empdepts](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/04-empdepts.png)
5. List all employees whose first name is "Hercules" and last names begin with "B."
   ![05-herculesb](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/05-herculesb.png)
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
   ![06-salesemps](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/06-salesemps.png)
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
   ![07-salesdevemps](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/07-salesdevemps.png)
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
   ![08-lncount](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/08-lncount.png)

## Bonus
* ['Bonus' Jupyter Notebook](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/Bonus.ipynb)
  ![Average Salary by Title](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/Average%20Salary%20by%20Title.png)
* Technical Steps Breakdown:
  * I started to go down [this very scary sequence of steps](https://docs.sqlalchemy.org/en/13/core/tutorial.html) to manually, laboriously build all the PostgreSQL tables in Python (but not Pandas) before re-reading the instructions.
  * Once I realized our challenge for this assignment was solely to import from PostgreSQL into Pandas (not build custom tables and fields from scratch), [this tipsheet](https://pythondata.com/quick-tip-sqlalchemy-for-mysql-and-pandas) proved very helpful for porting PostgreSQL tables to Pandas dataframes.
* My employee badge reads 499942? Aha, I get it now:
  ![April Fools](https://github.com/ekenigsberg/BootCampHomework07-2019-07-20/blob/master/screenshots/bonus-lirpasloof.png)
* I humbly submit that "The Economist" magazine pulled off one of the better April Fool's pranks with [this article](https://www.economist.com/news/1995/04/01/more-is-more). It took me a couple of paragraphs to realize it was completely nonsensical.
