
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( welcomes.css )
Rails.application.config.assets.precompile += %w( aulas.css )
Rails.application.config.assets.precompile += %w( websites.css )
Rails.application.config.assets.precompile += %w( sistemas.css )
Rails.application.config.assets.precompile += %w( suportes.css )
Rails.application.config.assets.precompile += %w( redes.css )
Rails.application.config.assets.precompile += %w( stories.css )
Rails.application.config.assets.precompile += %w( blogs.css )
Rails.application.config.assets.precompile += %w( virus.css )
Rails.application.config.assets.precompile += %w( subscribers.css )
Rails.application.config.assets.precompile += %w( binarys.css )
Rails.application.config.assets.precompile += %w( index.mp4 )
Rails.application.config.assets.paths << Rails.root.join('node_modules')
