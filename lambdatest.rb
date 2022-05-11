require 'rubygems'
require 'selenium-webdriver'

    class LTAssignTest
    #Auther - Swapnil Titar
    # Test ID -- Slot reference: FXJD-QENH-YTHQ
        # drivers and Url
        USERNAME = 'swapniltitar03'
        ACCESS_KEY = 'y9v58iHbUZJI2JF8F0eGgQw6w3Mywa0KvtmWKY5N348BoPJqZt'
    # Input capabilities
        test = ['firefox', 'chrome', 'edge']
        runbrowser = test.map do |e|
        case e
        #when test.include? "firefox"
        #when test.index(0) == 'firefox'
        when 'firefox'
        capff = {
        'LT:Options' => {
        "user" => "swapniltitar03",
        "accessKey" => "y9v58iHbUZJI2JF8F0eGgQw6w3Mywa0KvtmWKY5N348BoPJqZt",
        "build" => "LT Assessment build",
        "name" => "LT Assessment Test suite",
        "platformName" => "Windows 7",
        "tunnel" => true,
        "network" => true
    },
        "browserName" => "Firefox",
        "browserVersion" => "82.0",
    }
    driver = Selenium::WebDriver.for(:remote,
    :url => "https://#{USERNAME}:#{ACCESS_KEY}@hub.lambdatest.com/wd/hub",
    :desired_capabilities => capff)
#    LTAssignTest.TC_simple_form_demo
    #self.TC_simple_form_demo
        driver.navigate.to "https://www.lambdatest.com/selenium-playground/"
        driver.find_element(:link_text, 'Drag & Drop Sliders').click
        #driver.find_element(:text,' Default value 15').visible
        driver.div(:class, 'sp__range sp__range-success').link(:value => 15).click
    80.times do
        driver.div(:class, 'sp__range sp__range-success').link(:value => 15).click.send_keys :arrow_right
    end 
        enteredvalue = driver.find_element(:id, 'rangeSuccess').text
        enteredText == "95" ? status = "passed" : status = "failed"
        driver.execute_script('lambda-status='+ status)
        driver.quit
    #when test.include? 'chrome'
when 'chrome'
capchrome = {
    'LT:Options' => {
        "user" => "swapniltitar03",
        "accessKey" => "y9v58iHbUZJI2JF8F0eGgQw6w3Mywa0KvtmWKY5N348BoPJqZt",
        "build" => "LT assignment chrome run",
        "name" => "LT assignment chrome test case",
        "platformName" => "Windows 10",
        "tunnel" => true,
        "network" => true
    },
        "browserName" => "Chrome",
        "browserVersion" => "88.0",
    }
        driver = Selenium::WebDriver.for(:remote,
        :url => "https://#{USERNAME}:#{ACCESS_KEY}@hub.lambdatest.com/wd/hub",
        :desired_capabilities => capchrome)
        #LTAssignTest.new.TC_drag_and_drop_slider
        #self.TC_drag_and_drop_slider
        #when test.include? 'edge'
        driver.navigate.to "https://www.lambdatest.com/selenium-playground/"
        driver.find_element(:link_text, 'Simple Form Demo').click
        String msg = "Welcome to the Lambda Test..!!"
        driver.find_element(:id, 'user-message').send_keys(msg)
        #driver.find_element(:id, 'sampletodotext').send_keys("Yey, Let's add it to list")
        driver.find_element(:id, 'showInput').click
        enteredText = driver.find_element(:id, 'message').text
        enteredText == msg ? status = "passed" : status = "failed"
        driver.execute_script('lambda-status='+ status)
        driver.quit
when 'edge'
    capedge = {
        'LT:Options' => {
        "user" => "swapniltitar03",
        "accessKey" => "y9v58iHbUZJI2JF8F0eGgQw6w3Mywa0KvtmWKY5N348BoPJqZt",
        "build" => "LT Test build on Edge",
        "name" => "LT test case run on edge",
        "platformName" => "macOS Sierra",
        "tunnel" => true,
        "network" => true
    },
        "browserName" => "MicrosoftEdge",
        "browserVersion" => "87.0",
    }
        driver = Selenium::WebDriver.for(:remote,
            :url => "https://#{USERNAME}:#{ACCESS_KEY}@hub.lambdatest.com/wd/hub",
            :desired_capabilities => capedge)
        #LTAssignTest.new.TC_Input_form_validations
        #self.TC_Input_form_validations    
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
    else
            puts "browser not in directory..!!"
    end


    # Test SCenario -1 ---- Simple form demo
    #def TC_simple_form_demo
        
    #end

#Test Scenario -- 2  --- drag and drop slider.
    #def TC_drag_and_drop_slider
    
    #end


# Test scenario --3  -- Input form validations.
    #def TC_Input_form_validations
      
    #end
end

end
#LTAssignTest.TC_simple_form_demo