module Fae
  module NavigationConcern
    extend ActiveSupport::Concern

    # define the navigation structure in this file
    # example structure:
    #
    # def structure
    #   [
    #     item('Top Nav Item 1', subitems: [
    #       item('Top Nav Dropdown Item 1', class: 'custom-class', path: some_named_route_path),
    #       item('Top Nav Dropdown Item 2', subitems: [
    #         item('Side Nav Item 1', subitems: [
    #           item('Side Nav Nested Item', path: some_named_route_path)
    #         ]),
    #         item('Side Nav Item 1', path: some_named_route_path)
    #       ]),
    #     ]),
    #     item('Pages', subitems: [
    #       item('Home', path: fae.edit_content_block_path('home')),
    #       item('About Us', path: fae.edit_content_block_path('about_us'))
    #     ])
    #   ]
    # end

    def structure
      [
        item('Thought Categories', path: admin_thought_categories_path),
        item('Thoughts', path: admin_thoughts_path),
        # scaffold inject marker
        item('Pages', subitems: [
            item('All', path: fae.pages_path),
          item('Home', path: fae.edit_content_block_path('home')),
          item('About Us', path: fae.edit_content_block_path('about_us')),
          item('What We Do', path: fae.edit_content_block_path('what_we_do'))
          item('Contact Us', path: fae.edit_content_block_path('contact_us')),
        ])
      ]
    end

  end
end
