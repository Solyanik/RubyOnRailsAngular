class RademadeAdmin::CatalogsController < RademadeAdmin::ModelController

  options do
    name 'Каталог'
    form do
      name
      description
      price
    end
    labels do
      name 'Имя'
      description 'Описание'
      price 'Цена'
    end
  end
  
end
