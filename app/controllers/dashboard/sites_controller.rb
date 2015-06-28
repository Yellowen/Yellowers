module Dashboard
  class SitesController < ApplicationController
    layout false
    # GET /sites/new

    def new
      @gears = Gear.all
      @siteCategories = SiteCategory.all
      @namespaces = Namespace.where(owner_id: current_user)
      @domains = SiteFramework::Domain.all
    end

    # POST /sites
    # POST /sites.json
    def create
      @errors = {}
      ActiveRecord::Base.transaction do
        create_site
        create_domain
        create_gear_box
      end
      authorize @site

      respond_to do |f|
        if @errors.empty?
          f.js
          f.html
        else
          f.js { render :errors }
          f.html
        end
      end
    end

    def create_site
      @site = SiteFramework::Site.new(title: params[:title],
                                      #{}ite_category_id: params[:site_category_id],
                                      owner_id: current_user)
      if @site.save
        @site
      else
        @errors.merge! @site.errors
      end
    end


    def create_domain
      domain_name = "#{params["domain"]}-#{params["namespace"]}.factoren.com"
      @domain = SiteFramework::Domain.new(name: domain_name,
                                          parent_id: params[:parent_id],
                                          namespace_id: params[:namespace],
                                          site: @site)
      if @domain.save
        @domain
      else
        @errors.merge! @site.errors
      end

    end

    def create_gear_box
      @gear_box = GearBox.new(site: @site,
                              gear_id: params[:gear_id],
                              user_id: current_user.id
                              )
      if @gear_box.save
        @gear_box
      else
        @errors.merge! gear_box.errors
      end
    end


    def resource_params
      params.require(:site).permis(:id, :title, :url, :site_category_id, :gear_box)
    end
  end
end
