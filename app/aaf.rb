require "graphql/client"
require "graphql/client/http"

module AAF
  HTTP = GraphQL::Client::HTTP.new("https://api.platform.aaf.com/v1/graphql") do
    def headers(context)
      { "User-Agent": "@NoExtraPoints" }
    end
  end

  Schema = GraphQL::Client.load_schema(File.expand_path('./schema.json', File.dirname(__FILE__)))
  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end
