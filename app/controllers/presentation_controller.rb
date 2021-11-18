class PresentationController < ApplicationController
  before_action :set_items

  def haml_page
  end

  def erb_page
  end

  def slim_page
  end

  private

  def set_items
    @items = {
      "Headline 1" => %w[Link1 Link2 Link3 Link4 Link5 Link6 Link7],
      "Headline 2" => %w[Link1 Link2 Link3 Link4 Link5 Link6 Link7],
      "Headline 3" => %w[Link1 Link2 Link3 Link4 Link5 Link6 Link7],
      "Headline 4" => %w[Link1 Link2 Link3 Link4 Link5 Link6 Link7]
    }
  end
end
