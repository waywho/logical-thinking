class PagesController < ApplicationController
    def home
        @home_page = HomePage.instance
        @services = Service.order(:position)
    end

    def about_us
        @page = AboutUsPage.instance
        @team_members = TeamMember.order(:position)

        render "pages/static_page"
    end

    def what_we_do
        @page = WhatWeDoPage.instance

        @services = Service.order(:position)

        render "pages/static_page"
    end

    def contact_us
        @page = ContactUsPage.instance
        @message = Message.new
        render "pages/contact_page"
    end

    def create_message
        @message = Message.create(message_params)
        @page = ContactUsPage.instance
        if @message.valid?
            redirect_to thank_you_path
        else
            flash[:warning] = "Sorry! There was something wrong with your message, we could not send it. Please try again."
            render "pages/contact_page"
        end
    end

    def thank_you
    end

    private

    def message_params
        params.required(:message).permit(:name, :email, :body)
    end
end
