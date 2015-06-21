module Dashboard
  class SitesController

    # GET /sites/new
    def new
      @gears = Gear.all
      @siteCategory = SiteCategory.all
    end

    # POST /sites
    # POST /sites.json
    def create
      authorize @site
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
      @site = SiteFramework::Site.new(params)
      @site.owner_id = current_user
      @domain = SiteFramework::Domain.new
      @gear_box = GearBox.new

    end

    def resource_params
      params.require(:site).permis(:id, :name, :site_category_id, :gear_box)
    end
  end
end
