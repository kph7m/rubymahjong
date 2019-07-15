class ApiController < ApplicationController
  def getWonCount
    averageCount = WonCount.average(:wonCount)
    totalCount = WonCount.count
    jsonWonCount = {'total' => totalCount, 'average' => averageCount}
    render :json => jsonWonCount
  end

  def saveWonCount
    @wonCount = WonCount.new(
        wonCount: params[:count]
    )
    @wonCount.save
  end
end
