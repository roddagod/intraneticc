json.extract! event_stat, :id, :name, :event_date, :icc_event_id, :orateur, :moderateur, :conducteur, :nb_nonstar_h, :nb_nonstar_f, :nb_star_h, :nb_star_f, :nb_enfants, :created_at, :updated_at
json.url event_stat_url(event_stat, format: :json)
