require 'selenium-webdriver'
require 'test/unit'



class LtTest < Test::Unit::TestCase
    """
    LambdaTest selenium automation Automation given assignemet test case
    Ruby Automation Tests on LambdaTest Distributed Selenium Grid 
    """

    
    def setup
        username= ENV["LT_USERNAME"] || "swapniltitar03"
        accessToken= ENV["LT_ACCESS_KEY"] || "y9v58iHbUZJI2JF8F0eGgQw6w3Mywa0KvtmWKY5N348BoPJqZt"
        gridUrl = "hub.lambdatest.com/wd/hub"
 
        caps = {                       
            :browserName => "chrome",         
            :version =>   "99.0",         
            :platform =>  "win10",
            :name =>  "LambdaTest ruby Assigment code",
            :build =>  "LambdaTest ruby Assigment build",      
            :network =>  true,
            :visual =>  true,
            :video =>  true,
            :console =>  true
        }  
 
        puts (caps)
        # URL: https://{username}:{accessToken}@hub.lambdatest.com/wd/hub
        @driver = Selenium::WebDriver.for(:remote,
            :url => "https://"+username+":"+accessToken+"@"+gridUrl,
            :desired_capabilities => caps)
    end
 
    def tc_simple_form_demo
        puts("Start Test case run..!!")
        @driver.get("https://www.lambdatest.com/selenium-playground/")
        @driver.find_element(:link_text, 'Simple Form Demo').click
        String msg = "Welcome to the Lambda Test..!!"
        @driver.find_element(:id, 'user-message').send_keys(msg)
        #driver.find_element(:id, 'sampletodotext').send_keys("Yey, Let's add it to list")
        @driver.find_element(:id, 'showInput').click
        enteredText = driver.find_element(:id, 'message').text
        enteredText == msg ? status = "passed" : status = "failed"
        @driver.execute_script('lambda-status='+ status)
    end

    #def test_Login
    #    
    #    puts("Searching lambdatest on google.com ")
    #    sleep(15)
    #    @driver.get("https://lambdatest.github.io/sample-todo-app/")
    #    elem1 = @driver.find_element(:name, 'li1')
    #    elem1.click;

    #    elem2 = @driver.find_element(:name, 'li2')
    #    elem2.click;
    #    puts("Test Runned Successfully.")
    #end
    
  
 
    def teardown
    
        @driver.quit
        
    end
 
 
end
