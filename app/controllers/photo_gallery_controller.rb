class PhotoGalleryController < ApplicationController
  before_action :set_gallery

  def create
    add_more_images(images_params[:photo_gallery])
    flash[:error] = "Falha ao carregar imagem" unless @item.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Falha ao deletar imagem" unless @item.save
    @item.reload
    redirect_back(fallback_location: root_path)
  end

  private
  def set_gallery
    @item = Item.find(params[:item_id])
  end

  def add_more_images(new_images)
    photo_gallery = @item.photo_gallery
    photo_gallery += new_images
    @item.photo_gallery = photo_gallery
    @item.save
  end

  def remove_image_at_index(index)
    @item.photo_gallery[index].try(:remove!)
    @item['photo_gallery'].delete_at(index)
  end

  def images_params
    params.require(:item).permit({photo_gallery: []})
  end
end
