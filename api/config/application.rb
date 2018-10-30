require_relative 'boot'

require 'rails/all'
require 'blockchain-lite'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Api
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    @blockchain = Blockchain.new
    b0 = Block.first( 'Genesis' )
    b1 = Block.next( b0, 'Transaction Data...' )
    b2 = Block.next( b1, 'Transaction Data...' )
    b3 = Block.next( b2, 'Transaction Data...' )

    blockchain = [b0, b1, b2, b3]

pp blockchain
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
