## Homework 5.1

Sample interview question:

We have a fairly large log file. Each line of the log file contains an url which a user has visited on our site.
We want to figure out what's the most popular 10 urls visited by our users.

Sample logs
https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs

## Regex practice questions

### Question 1
Revise the following regular expression operators:

`()[]{}.*+?^$|\`

For each of the following, give a couple of examples of strings which the regular expression would match. Describe (colloquially, in a manner that a non-technical person would understand) the set of strings that the pattern is designed to match.

- `/[a-zA-Z]+/`
- `/^[A-Za-z][a-z]*$/`
- `/p[aeiou]{,2}t/`
- `/\s(\w+)\s\1/`
- `/^(\+[0-9][0-9]|0)[0-9] ([0-9][ -]?){8}$/`

### Question 2
Write a regular expression to solve the following problems:
- Match a price
- Validate an email address
