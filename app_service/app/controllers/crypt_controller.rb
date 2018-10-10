class CryptController < ApplicationController
  require "uri"
  require "net/http"
  require 'json'
  require 'faraday'

  skip_before_action :verify_authenticity_token

  def encrypt
    # extract form data
    imageData = params[:imgB64]
    message = params[:msg]

    # post node server
    res = Faraday.post("http://localhost:4000/ping", {message:message,imageData:imageData})

    # responed json
    body = JSON.parse res.body
    render :json => {"Hello":"world","poop": body["encodedImageData"]}
  end

  def decrypt
    # # extract form data
    imageData = params[:imgB64]

    # # post node server
    res = Faraday.post("http://localhost:4000/decrypt", {imageData:imageData})
    body = JSON.parse res.body

    render :json => {"decryptedMessage": body["decryptedMessage"]}
  end
end