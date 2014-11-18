Rails.application.config.middleware.use OmniAuth::Builder do
  config = YAML.load_file(File.join(Rails.root, 'config', 'salesforce.yml'))[Rails.env]
  provider :salesforce, config["client_key"], config["client_secret"]
end