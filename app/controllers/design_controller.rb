class DesignController < ApplicationController
  def list
    designs = Design.all
    
    render :text => designs.join("\n")
  end

  def load
		name = params[:name]
    design = Design.select(:data).where(:name => name).first
		if design.nil?
			render :text => 'not found', :status => 404
    else
      render :text => design.data, :content_type => 'application/xml'
    end
  end

  def save
		name = params[:name]
		data = params[:xml]

    design = Design.where(:name => name).first
		if design.nil?
      design = Design.new
      design.name = name
      design.data = data
      design.save
    else
			design.data = data
			design.save
    end    
    
    render :text => 'created', :status => 201
  end

end