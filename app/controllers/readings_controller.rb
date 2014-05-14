class ReadingsController < ApplicationController
  def index
    @readings = Dir.glob('public/pdfs/*.pdf')
  end

  def show
    @file = send_pdf(params[:id])
  end

  private

  def send_pdf(filename)
    path_to_pdf = Rails.root.join("public/pdfs/#{filename}.pdf")
    send_file(path_to_pdf, filename: "#{filename}.pdf", disposition: 'inline', type: "application/pdf")
  end
end
