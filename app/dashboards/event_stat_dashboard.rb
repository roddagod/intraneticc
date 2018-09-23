require "administrate/base_dashboard"

class EventStatDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    icc_event: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    event_date: Field::DateTime,
    orateur: Field::String,
    moderateur: Field::String,
    conducteur: Field::String,
    nb_nonstar_h: Field::Number,
    nb_nonstar_f: Field::Number,
    nb_star_h: Field::Number,
    nb_star_f: Field::Number,
    nb_enfants: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :icc_event,
    :id,
    :name,
    :event_date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :icc_event,
    :id,
    :name,
    :event_date,
    :orateur,
    :moderateur,
    :conducteur,
    :nb_nonstar_h,
    :nb_nonstar_f,
    :nb_star_h,
    :nb_star_f,
    :nb_enfants,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :icc_event,
    :name,
    :event_date,
    :orateur,
    :moderateur,
    :conducteur,
    :nb_nonstar_h,
    :nb_nonstar_f,
    :nb_star_h,
    :nb_star_f,
    :nb_enfants,
  ].freeze

  # Overwrite this method to customize how event stats are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(event_stat)
  #   "EventStat ##{event_stat.id}"
  # end
end
