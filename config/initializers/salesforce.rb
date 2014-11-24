$salesforce_config = YAML.load_file(File.join(Rails.root, 'config', 'salesforce.yml'))[Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesforce, $salesforce_config["client_key"], $salesforce_config["client_secret"]
end