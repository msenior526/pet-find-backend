class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, ENV['SECRET'])
    end

    def decode_token(token)
        JWT.decode(token, ENV['SECRET'])
    end
end
