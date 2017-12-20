namespace :products do
  desc "빠띠의 굿즈 데이터를 생성합니다."
  task 'seed' => :environment do
    Product.transaction do
      seed(title: '우주당 맨투맨',
        description: '우주당의 아름다운 로고를 입어 보세요',
        slug: 'mtm',
        price: 35000)

      seed(title: '조직 내 민주주의 엽서 세트',
          description: '조직 내 민주주의 엽서 세트입니다',
          slug: 'postset',
          price: 8000)
    end
  end

  def seed(options)
    slug = options[:slug]
    product = Product.find_or_initialize_by slug: slug
    product.assign_attributes(options)
    product.save!
  end

end
