namespace :products do
  desc "빠띠의 굿즈 데이터를 생성합니다."
  task 'seed' => :environment do
    Product.transaction do
      seed(title: '조직 내 민주주의 엽서 세트',
          description: '조직 내 민주주의 엽서 세트입니다',
          slug: 'democracy-card',
          price: 8000)

      seed(title: '물고기파티 네트워킹 스티커',
        description: '독립적인 개인들을 위한 즐겁고 가벼운 네트워킹 프로그램 스티커',
        slug: 'fish-card',
        price: '미정')

      seed(title: '페미니스트 선생님 기자회견 피켓',
        description: '페미니스트 선생님 기자회견 피켓입니다',
        slug: 'femischool-picket',
        price: '미정')

      seed(title: '페미니스트 선생님이 필요해 도서',
        description: '페미니스트 선생님이 필요해 도서입니다',
        slug: 'feminism-book',
        price: '미정')

      seed(title: '여성의 날 행진 피켓',
        description: '여성의 날 행진 피켓입니다',
        slug: 'womenday-picket',
        price: '미정')

      seed(title: '우주당 맨투맨 티셔츠',
        description: '우주당 맨투맨 티셔츠입니다',
        slug: 'wouldyou-tee',
        price: '미정')

      seed(title: '우주당 스티커 (블랙)',
        description: '우주당 스티커 (블랙)입니다',
        slug: 'wouldyou-stickerblack',
        price: '미정')

      seed(title: '우주당 스티커 (투명)',
        description: '우주당 스티커 (투명)입니다',
        slug: 'wouldyou-stickertrans',
        price: '미정')
    end
  end

  def seed(options)
    slug = options[:slug]
    product = Product.find_or_initialize_by slug: slug
    product.assign_attributes(options)
    product.save!
  end

end
