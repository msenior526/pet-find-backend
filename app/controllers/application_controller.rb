class ApplicationController < ActionController::API
    @secret = ENV['SECRET']
    def encode_token(payload)
        JWT.encode(payload, @secret)
    end

    def decode_token(token)
        JWT.decode(token, ENV['SECRET'])
    end
end
