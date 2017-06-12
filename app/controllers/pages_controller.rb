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

        render "pages/static_page"
    end
end
