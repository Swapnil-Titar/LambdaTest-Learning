## Lambda Test - Assignment - Ruby Automation Using Lambdatest - POC
![Ruby](https://opengraph.githubassets.com/b2069e25b998f2707eb68cd09ba999c6d501b9b35e90303e573b2aea6dc0bc3f/LambdaTest/ruby-selenium-sample)
Ruby selenium automation sample test for Lambdatest Cloud GRID.

### Prerequisites
##### Install Ruby and gem on your system.
 - Windows: http://rubyinstaller.org/downloads/
 - macos: https://www.ruby-lang.org/en/documentation/installation/#homebrew
 - Linux: https://www.ruby-lang.org/en/documentation/installation/#apt


### Run your First Test
1. Clone the  LT-assignment branch from storage repo for Ruby-selenium-sample repository. 
```
git clone https://github.com/Swapnil-Titar/storage.git
```
2. Next get into branch, and use Lamabdatest Credentials. You can get these from lambdatest automation dashboard.
   <p align="center">
   <b>For Linux/macOS:</b>:
 
```
export LT_USERNAME="YOUR_USERNAME"
export LT_ACCESS_KEY="YOUR ACCESS KEY"
```
<p align="center">
   <b>For Windows:</b>

```
set LT_USERNAME="YOUR_USERNAME"
set LT_ACCESS_KEY="YOUR ACCESS KEY"
```
Step 3. Check the Ruby version on gitpod or your local setup then rvm use ruby 2.7.5 and then start Install dependencies using gem.
```
gem install selenium-webdriver 
```
Step 4. Run your test.
```
ruby lambdatest.rb
```

### [Lambda Test cloud dashboard]  - (https://automation.lambdatest.com/build)

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.
### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)
##### [PhpUnit Documentation](https://phpunit.de/documentation.html)
