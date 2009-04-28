require 'xsd/ns'

require 'soap/rpc/driver'

class CodeController < ApplicationController

  def googletestX
    yourkey = 'xUimqfVQFHJyxubpfWeIoo9sR6bfui6J'
    @yourquery = 'tope omitola'
    XSD::Charset.encoding = 'UTF8'
    googleurl = "http://api.google.com/search/beta2"
    urn = "urn:GoogleSearch"
    driver = SOAP::RPC::Driver.new(googleurl, urn)
    driver.add_method('doGoogleSearch', 'key', 'q', 'start', 'maxResults', 'filter', 'restrict', 'safeSearch', 'lr', 'ie', 'oe')
    @result = driver.doGoogleSearch(yourkey, @yourquery, 0, 3, false, '', false, '', '', '')
  end


  def googletest
    yourkey = 'xUimqfVQFHJyxubpfWeIoo9sR6bfui6J'
    @yourquery = 'tope omitola'
    XSD::Charset.encoding = 'UTF8'
    wsdlfile = "http://api.google.com/GoogleSearch.wsdl"
    driver = SOAP::WSDLDriverFactory.new(wsdlfile).create_rpc_driver

    @result = driver.doGoogleSearch(yourkey, @yourquery, 0, 3, false, '', false, '', '', '')

    
  end






















end
