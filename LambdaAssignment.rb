require 'selenium-webdriver'
require 'test/unit'



class LtTest < Test::Unit::TestCase
    """
    LambdaTest selenium automation sample example
    Configuration
    ----------
    username: Username can be found at automation dashboard
    accessToken:  AccessToken can be generated from automation dashboard or profile section

    Result
    -------
    Execute Ruby Automation Tests on LambdaTest Distributed Selenium Grid 
    """

    
    def setup
        """
        Setup remote driver
        Params
        ----------
        platform : Supported platform - (Windows 10, Windows 8.1, Windows 8, Windows 7,  macOS High Sierra, macOS Sierra, OS X El Capitan, OS X Yosemite, OS X Mavericks)
        browserName : Supported platform - (chrome, firefox, Internet Explorer, MicrosoftEdge)
        version :  Supported list of version can be found at https://www.lambdatest.com/capabilities-generator/

        Result
        -------
        """
        username= ENV["LT_USERNAME"] || "{username}"
        accessToken= ENV["LT_ACCESS_KEY"] || "{accessToken}"
        gridUrl = "hub.lambdatest.com/wd/hub"
 
        caps = {                       
            :browserName => "chrome",         
            :version =>   "88.0",         
            :platform =>  "win10",
            :name =>  "LambdaTest ruby google search name",
            :build =>  "LambdaTest ruby google search build",      
            :network =>  true,
            :visual =>  true,
            :video =>  true,
            :console =>  true
        }  
     
        puts (caps)
        # URL: https://{username}:{accessToken}@hub.lambdatest.com/wd/hub
        driver = Selenium::WebDriver.for(:remote,
            :url => "https://"+username+":"+accessToken+"@"+gridUrl,
            :desired_capabilities => caps)
    end
 
    def TC_simple_form_demo

        puts("Test scanario for simple form demo..!! ")
        driver.navigate.to "https://www.lambdatest.com/selenium-playground/"
        driver.find_element(:link_text, 'Simple Form Demo').click
        String msg = "Welcome to the Lambda Test..!!"
        driver.find_element(:id, 'user-message').send_keys(msg)
        #driver.find_element(:id, 'sampletodotext').send_keys("Yey, Let's add it to list")
        driver.find_element(:id, 'showInput').click
        enteredText = driver.find_element(:id, 'message').text
        enteredText == msg ? status = "passed" : status = "failed"
        driver.execute_script('lambda-status='+ status)

    end

    #Test Scenario -- 2  --- drag and drop slider.
    def TC_drag_and_drop_slider

        driver.navigate.to "https://www.lambdatest.com/selenium-playground/"
        driver.find_element(:link_text, 'Drag & Drop Sliders').click
        driver.find_element(:text,' Default value 15').visible
        driver.div(:class, 'sp__range sp__range-success').link(:value => 15).click
        80.times do
        driver.div(:class, 'sp__range sp__range-success').link(:value => 15).click.send_keys :arrow_right
        end 
        enteredvalue = driver.find_element(:id, 'rangeSuccess').text
        enteredText == "95" ? status = "passed" : status = "failed"
        driver.execute_script('lambda-status='+ status)
    end
    
 
  # Test scenario --3  -- Input form validations.
    def TC_Input_form_validations
        driver.navigate.to "https://www.lambdatest.com/selenium-playground/"
        driver.find_element(:link_text, 'Input Form Submit').click
    #String Errormsg ="Please fill in the fields"
        driver.find_element(:text, 'Submit').click
        assert(true, "Please fill in the fields")
        driver.find_element(:id, 'name').send_keys("Swapnil")
        driver.find_element(:id, 'inputEmail4').send_keys("Swapniltitar03@gmail.com")
        driver.find_element(:id, 'inputPassword4').send_keys("test12345")
        driver.find_element(:id, 'company').send_keys("CAS")
        driver.find_element(:id, 'websitename').send_keys("https://www.cas.org/")
        country_dropdown = driver.select(name: 'country')
        country_dropdown.select(text: 'United States')
        driver.find_element(:id, 'inputCity').send_keys("Pune")
        driver.find_element(:id, 'inputAddress1').send_keys("Hazel new county")
        driver.find_element(:id, 'inputAddress2').send_keys("Near Hind road")
        driver.find_element(:id, 'inputState').send_keys("Maharashtra")
        driver.find_element(:id, 'inputZip').send_keys("411411")
        driver.find_element(:text, 'Submit').click
    #driver.find_element(:id, 'showInput').click
        enteredText = driver.find_element(:class, 'success-msg hidden').text
        enteredText == "Thanks for contacting us, we will get back to you shortly." ? status = "passed" : status = "failed"
        driver.execute_script('lambda-status='+ status)
        driver.quit
end

    def teardown
        driver.quit    
end
 
 
end
