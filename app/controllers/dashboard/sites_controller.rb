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
      @site = SiteFramework::Site.create(title: params[:title],
                                      site_category_id: params[:site_category_id],
                                      owner_id: current_user)
      authorize @site
      domain_name = "#{params["domain"]}-#{params["namespace"]}.factoren.com"
      @domain = SiteFramework::Domain.create(name: domain_name,
                                              parent_id: params[:parent_id],
                                              namespace_id: params[:namespace],
                                             site: @site)

      @gear_box = GearBox.create(site: @site,
                                 gear_id: params[:gear_id],
                                  user_id: current_user.id
                                 )

          respond_to do |f|
      if @group.save
        f.js
        f.html
      else
        f.js { render :errors }
        f.html
      end

    end

    def build_resource

    end

    def resource_params
      params.require(:site).permis(:id, :title, :url, :site_category_id, :gear_box)
    end
  end
end
