module Dashboard
  class SitesController

    # GET /sites/new
    def new
      @gears = Gear.all
      @siteCategories = SiteCategory.all
      @namespaces = Namespace.where(owner_id: current_user.ir)
      @domains = SiteFramework.Domain.all
    end

    # POST /sites
    # POST /sites.json
    def create
      @site = SiteFramework::Site.create!(title: params[:title],
                                      site_category_id: params[:site_category_id],
                                      owner_id: current_user.ir)
      authorize @site
      @domain = SiteFramework::Domain.create!(name: params[:name],
                                              parent_id: params[:parent_id],
                                              namespace_id: namespace_id,
                                              site: @site)
      @gear_box = GearBox.create!(create!(site: @site,
                                          gear_id: params[:gear_id]),
                                  user_id: current_user.id
                                  )
      respond_to do |format|
        if @site.save
          format.html { redirect_to @site, notice: 'Site was successfully created.' }
          format.json { render :show, status: :created, location: @site }
        else
          format.html { render :new }
          format.json { render json: @site.errors, status: :unprocessable_entity }
        end
      end
    end

    def build_resource

    end

    def resource_params
      params.require(:site).permis(:id, :title, :url, :site_category_id, :gear_box)
    end
  end
end
