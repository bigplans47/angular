FactoryBot.define do
  factory(:list) do
    name('Knit the sock monkey')
    end
    factory(:task) do
      description('get sewing needles')
      done('true')
  end
end
