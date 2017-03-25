RSpec.configure do |config|
  config.include FactoryGirl::Sytax::Methods
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
