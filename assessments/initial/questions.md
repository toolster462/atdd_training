# Assessment Quiz 
 
 ## Test Automation

Why would you want to automate a test?
To perform tasks that are repeatable and to minimize errors.
increase scope and coverage

What tests are good canidates for automation? How do you decide what to automate?
Business criticality, Repeatable tests are good candidates. 
If it involves complex logic, many users and has many dependencies, and warrants 
additional personnel and time.

What type of things are not good to automate?
Simple functions, sanity checks, adhoc testing

What criteria do you consider for automating a test?
How often is it used? How complex is it and where is it on 
the critical path. tests needing different configurations and data needs

What are some advantages to writing automated tests that drive the UI of an application? What are some of the disadvantages?
minimize duplicity,standardizing critical features of the app that don't necessarily change much. running regression tests to ensure other features aren't broken. 
disadvantages to automation are that scripts have to clearly define the inflection points to be tested   

What is the Test Data Lifecycle? What is destructive testing?
building test data to clearly define all conditions including acceptance, alternate and exception paths

Can you automate everything 100%? If no, whay are the disadvantages of trying to automate everything?
No. Disadvantages of trying to automate everything are 
that scripts become rigid and complex 

 ## OO Questions

Explain what Object Oriented Programming.
 involves classes and objects
 
 What is the difference between module and a class in Ruby?

 Explain the mix-in behavior in Ruby.

 Explain inheritance in Ruby.
when objects inherit traits/  properties from the parent

 Why should you focus compesition over inheritance?

 What is the difference between a class and a instance method?

 When would you use an instance method vs a class method?


 ## Watir / Page Object

What is the page object pattern?

What is Watir?
Ruby library for automating web browsers

What are the advantages of using Page Object over using Watir?

Given a text box with an Id of "myTextBox", Show how you would enter text into the element using watir webdriver. How would you do it with page object?


 ## Cucumber

What is Cucumber?
is a tool to write acceptance tests for an application

 What is Gherkin? How does it relate to Acceptance Criteria?
Gherkin is a language that cucumber understands and is in a 
format that is readable that lets one drive software behavior

Define what is support, env.rb and hooks.rb ?

 What are the 2 files required to execute a Cucumber test scenario?
Features and step definition

What is feature file in Cucumber? What does feature file consist of?
consists of conditions required for executing code
it consists of:
feature, scenario, given, when and then

 What is the difference betweent imperative and Declaritive style Gherkin?

