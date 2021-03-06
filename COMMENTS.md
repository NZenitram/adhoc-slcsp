# Ad-Hoc SLCSP

Ad-Hoc SLCSP is a Ruby program that parses provided CSV files to return Silver level healthcare plan rate information for a given zipcode.

## Getting Started

These instructions will get your copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Please check your Ruby and Bundler Versions:

```
Ruby Version 2.3.0
Bundler Version 1.14.5

```

### Installing

Run `bundle` in the project directory to install dependancies.

```
$ bundle
Using coderay 1.1.1
Using method_source 0.8.2
Using minitest 5.10.1
Using slop 3.6.0
Using bundler 1.14.5
Using pry 0.10.4
Bundle complete! 2 Gemfile dependencies, 6 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
```

## Running the tests

Run `rake test` to run the program's test suite.

```
$ rake test

Run options: --seed 12171

# Running:

................

Fabulous run in 262.476686s, 0.0610 runs/s, 0.0914 assertions/s.

16 runs, 24 assertions, 0 failures, 0 errors, 0 skips


```

The test suite takes about four and a half minutes to run. This is the result of parsing the CSVs to create data objects that match the required parameters to complete the `slcsp.csv`. A future iteration may include persisting the CSV data in a database, and then parsing the data out using SQL queries. I choose to run everything in pure Ruby deliberately to show that I understand the nuances of the language without using libraries and frameworks.
