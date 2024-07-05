# frozen_string_literal: true

class ApiConstraints
  # para eliminar o uso do @
  # attr_reader
  # attr_writer
  # attr_accessor # engloba os dois
  attr_accessor :version, :default # substitui @version = version ...

  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(request)
    # binding.pry
    @default || request.headers['Accept'].include?("application/vnd.marketplace.v#{@version}") # para pegar todos os header: sem cochetes '[]'
  end
end
# params = { name: 'test'}
# ApiConstraints.new(params)
