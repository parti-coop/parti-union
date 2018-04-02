namespace :team do
  desc "빠띠의 팀원 데이터를 생성합니다."
  task 'seed' => :environment do
    Team.transaction do
      seed(name: '권오현',
          description: '세상이 모두에게 즐겁고 평화로운 곳이 되는데 기여하려고 잘 하든 못하든 상관없이 여러가지 일을 벌입니다.',
          profile: 'team-picture-sis.png',
          twitter: 'https://twitter.com/rest515',
          facebook: 'https://www.facebook.com/rest515',
          github: 'https://github.com/rest515')

      seed(name: '달리',
        description: '플랫폼 개발을 하고 있습니다. 삶에서 자급자립, 대안공동체를 고민하고 실천하고 있습니다.',
        profile: 'team-picture-dali.png',
        twitter: 'https://twitter.com/blue_spider',
        github: 'https://github.com/dalikim')

      seed(name: '박은지',
        description: '디자인을 베이스로 캠페인를 기획하고 있습니다. 페미니즘, 여성이 겪는 가정폭력, 생활동반자법, 젠더이슈, 주거문제에 관심이 많습니다.',
        profile: 'team-picture-berry.jpg',
        twitter: 'https://twitter.com/berrytext140',
        facebook: 'https://www.facebook.com/rozyroom')

      seed(name: '정승구',
        description: '커뮤니티를 만드는 사람들을 돕고 있습니다. 세상을 긍정적으로 변화시키는 커뮤니티에 관심이 많습니다.',
        profile: 'team-picture-ssinkj.jpg',
        blog: 'https://medium.com/@seungkujung')

      seed(name: '조이성화',
        description: '혐오와 차별이 없는 세상이 되었으면 좋겠습니다. 글을 쓰고 개발을 합니다. 페미니즘, 군인권, 학교에서의 민주주의에 관심이 있습니다.',
        profile: 'team-picture-greenhair.jpg',
        facebook: 'https://www.facebook.com/Martian.Lee',
        github: 'https://github.com/martianlee',
        blog: 'https://brunch.co.kr/@martian')
    end
  end

  def seed(options)
    profile = options[:profile]
    team = Team.find_or_initialize_by profile: profile
    team.assign_attributes(options)
    team.save!
  end

end
