class ReadingsController < ApplicationController

  def index
  end

  def show
    @file = send_pdf("HisforHeroin")
  end

  private

  def send_pdf(filename)
    path_to_pdf = Rails.root.join("public/#{filename}.pdf")
    send_file(path_to_pdf, filename: "#{filename}.pdf", disposition: 'inline', type: "application/pdf")
  end

end
