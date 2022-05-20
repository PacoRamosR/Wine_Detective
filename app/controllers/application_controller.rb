class ApplicationController < ActionController::Base
    include SessionsHelper
    def hello
        render html: "hello,world"
    end

    def contact
    end

end
