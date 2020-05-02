# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

# Rails.application.config.content_security_policy do |policy|
#   policy.default_src :self, :https
#   policy.font_src    :self, :https, :data
#   policy.img_src     :self, :https, :data
#   policy.object_src  :none
#   policy.script_src  :self, :https
#   policy.style_src   :self, :https
#   # If you are using webpack-dev-server then specify webpack-dev-server host
#   policy.connect_src :self, :https, "http://localhost:3035", "ws://localhost:3035" if Rails.env.development?

#   # Specify URI for violation reports
#   # policy.report_uri "/csp-violation-report-endpoint"
# end

# If you are using UJS then enable automatic nonce generation
# Rails.application.config.content_security_policy_nonce_generator = -> request { SecureRandom.base64(16) }

# Set the nonce only to specific directives
# Rails.application.config.content_security_policy_nonce_directives = %w(script-src)

# Report CSP violations to a specified URI
# For further information see the following documentation:
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
# Rails.application.config.content_security_policy_report_only = true

# Rails.application.config.content_security_policy do |p|
#   p.default_src :self, :https
#   p.font_src    :self, :https, :data
#   p.img_src     :self, :https, :data
#   p.object_src  :none
#   p.script_src  :self, :https
#   p.style_src   :self, :https, :unsafe_inline
  
#   # To allow connections to the webpack-dev-server running in
#   # a separate docker container
#   if Rails.env.development?
#     p.connect_src :self, :https, 'http://localhost:3035', 'ws://localhost:3035', 'http://0.0.0.0:3035', 'ws://0.0.0.0:3035'
#   end
  
#   # Specify URI for violation reports
#   # p.report_uri "/csp-violation-report-endpoint"
# end

# Rails.application.config.content_security_policy do |policy|
#   # Allow webpack-dev-server connections
#   policy.connect_src :self, :https, 'http://localhost:3035', 'ws://localhost:3035', 'http://0.0.0.0:3035', 'ws://0.0.0.0:3035' if Rails.env.development?
# end