
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( welcomes.css )
Rails.application.config.assets.precompile += %w( aulas.css )
Rails.application.config.assets.precompile += %w( websites.css )
Rails.application.config.assets.precompile += %w( sistemas.css )


Rails.application.config.assets.paths << Rails.root.join('node_modules')
