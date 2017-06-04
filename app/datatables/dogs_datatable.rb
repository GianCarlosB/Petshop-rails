class DogsDatatable
  delegate :params, :h, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Dog.count,
      iTotalDisplayRecords: dogs.total_entries,
      aaData: data
    }
  end

private

  def data
    dogs.map do |dog|
      [
        dog.name,
        dog.breed.description,
        dog.birthday.strftime('%d/%m/%Y'),
        dog.gender == 'M' ? '<i class="fa fa-mars" aria-hidden="true"></i>' : '<i class="fa fa-venus" aria-hidden="true"></i>',
        dog.castred ? 'SIM' : 'NÃO',
        dog.owner_name,
        dog.owner_phone,
        dog.date_last_visit.strftime('%d/%m/%Y')
      ]
    end
  end

  def dogs
    @dogs ||= fetch_dogs
  end

  def fetch_dogs
    dogs = Dog.order("#{sort_column} #{sort_direction}")
    dogs = dogs.page(page).per_page(per_page)
    if params[:search][:value].present?
      dogs = dogs.where('name like ? or owner_name like ?', '%' + params[:search][:value] + '%', '%' + params[:search][:value] + '%')
    end
    dogs
  end

  def page
    params[:start].to_i / per_page + 1
  end

  def per_page
    params[:length].to_i > 0 ? params[:length].to_i : 10
  end

  def sort_column
    columns = %w[name breed_id birthday gender castred owner_name owner_phone date_last_visit]
    columns[params[:order]['0'][:column].to_i]
  end

  def sort_direction
    params[:order]['0'][:dir] == 'desc' ? 'desc' : 'asc'
  end
end
