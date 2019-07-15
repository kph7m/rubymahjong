class ApiController < ApplicationController
  def getWonCount
    wonCount = {'minimum' => 10, 'average' => 20}
    render :json => wonCount
  end
end
