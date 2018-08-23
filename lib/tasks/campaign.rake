namespace :campaign do
  desc "캠페인 데이터를 생성합니다."
  task 'seed' => :environment do
    Campaign.transaction do
      campaign_seed(
          slug: 'campaign-letter',
          image: 'campaigns/campaign-letter.png',
          url: 'campaigns/letter',
          category: 'Action',
          agent: 'parliament',
          title: '국회의장에게 보내는 편지',
          description: '테러방지법 본회의 의결을 막기 위한 야권의 필리버스터가 일주일 째 이어지던 당시 테러방지법에 대한 시민의 의견을 모은 프로젝트')
      campaign_seed(
          slug: 'campaign-yourvote',
          image: 'campaigns/campaign-yourvote.png',
          url: 'campaigns/yourvote',
          category: 'Lab',
          agent: 'vote',
          title: '당신의 투표를 예측해 드립니다',
          description: '사전에 전국 유권자 1500명에게 물어, 최적화된 7개 문항만을 뽑아 구성한 예측모델로 응답자의 투표 결과를 예측한 프로젝트')
      campaign_seed(
          slug: 'campaign-toktok',
          image: 'campaigns/campaign-toktok.png',
          url: 'campaigns/toktok',
          category: 'Action',
          agent: 'parliament',
          title: '국회톡톡',
          description: '시민이 직접 입법 제안하고, 천명의 지지를 받으면 입법안을 의원에게 전달하는 시민입법플랫폼')
      campaign_seed(
          slug: 'campaigns-iknow1',
          image: 'campaigns/campaign-iknow1.png',
          url: 'campaigns/iknow1',
          category: 'Voice',
          agent: 'parliament',
          title: '바글시민와글입법(1) 입법안 채택',
          description: '2016년 입법 진행과정을 추적할 쟁점 법안 4가지 중 입법할 안을 시민이 투표하여 결정한 프로젝트')
      campaign_seed(
          slug: 'campaigns-iknow2',
          image: 'campaigns/campaign-iknow2.png',
          url: 'campaigns/iknow2',
          category: 'Voice',
          agent: 'parliament',
          title: '바글시민와글입법(2) 정당 이름 투표, 당원 모집',
          description: '바글와글 1차 쟁점법안 투표에서 4개 법안 중 5470개의 표를 받은 GMO 완전표시제 입법을 위한 원이슈 프로젝트 정당 만들기')
      campaign_seed(
          slug: 'campaigns-iknow3',
          image: 'campaigns/campaign-iknow3.png',
          url: 'campaigns/iknow3',
          category: 'Deliberation',
          agent: 'parliament',
          title: '바글시민와글입법(3) 전문가 쟁점토론, 당원 투표',
          description: '프로젝트 정당 ‘나는 알아야겠당’ 에서 발의할 입법안 ‘GMO 완전표시제’에 대한 전문가 쟁점 토론과 시민 투표를 진행한 프로젝트')
      campaign_seed(
          slug: 'campaigns-nongmo',
          image: 'campaigns/campaign-nongmo.png',
          url: 'campaigns/nongmo',
          category: 'Action',
          agent: 'parliament',
          title: 'GMO완전표시제 입법 청원 캠페인',
          description: '보건복지위원회의 법안심사소위원회 위원장인 인재근 의원에게 전달한 17만여명의 GMO완전표시제 서명 캠페인')
      campaign_seed(
          slug: 'campaigns/iknow',
          image: 'campaigns/campaign-iknow.png',
          url: 'campaigns/iknow',
          category: 'Action Voice Deliberation',
          agent: 'parliament',
          title: '나는 알아야겠당',
          description: '바글시민와글입법 3차까지의 진행을 이어 법안 심사 통과 압박 액션까지, 총 800여명의 당원이 뭉친 국내 최초의 프로젝트 정당')
      campaign_seed(
          slug: 'campaign-hayago',
          image: 'campaigns/campaign-hayago.png',
          url: 'campaigns/hayago',
          category: 'Action',
          agent: 'government',
          title: '우주당: 하야GO',
          description: '박근혜 대통령 탄핵 집회 참여 인증사진과 메시지를 공유하여 집회에 같이 참여한 참가자를 찾거나 장소에 구애받지 않고 온라인에서 함께할 수 있는 프로젝트')
      campaign_seed(
          slug: 'campaign-inno',
          image: 'campaigns/campaign-inno.png',
          url: 'campaigns/innovators',
          category: 'Voice',
          agent: 'government',
          title: '당신은 혁신의 편입니까?',
          description: '혁신가들의 제안으로 만드는 혁신정책 프로젝트')
      campaign_seed(
          slug: 'campaign-votefuture',
          image: 'campaigns/campaign-votefuture.png',
          url: 'campaigns/votefuture',
          category: 'Voice',
          agent: 'vote',
          title: '미래에서 온 투표',
          description: '아동의 제안을 모아 아동정책을 제 19대 대선 후보에게 전달하는 정책 제안 프로젝트')
      campaign_seed(
          slug: 'campaign-votefuture1',
          image: 'campaigns/campaign-votefuture1.png',
          url: 'campaigns/votefuture1',
          category: 'Action',
          agent: 'parliament',
          title: '대한민국 아동이 제안하는 대선 공약 발표회',
          description: '아동들이 직접 국회에 가서 그들이 제안하는 대선 공약을 발표한 캠페인')
      campaign_seed(
          slug: 'campaign-issuebattle',
          image: 'campaigns/campaign-issuebattle.png',
          url: 'campaigns/issuebattle',
          category: 'Lab Deliberation',
          agent: 'citizen',
          title: '정책배틀',
          description: '사회적 의제를 놓고 전문가, 활동가, 정치인, 일반 시민들이 모여서 토론과 투표를 통해 해결책을 마련해 가는 참여형 의사결정 플랫폼 ‘타운홀’을 활용하여 오프라인에서 전문가가 제안하고 시민이 투표하는 ‘정책배틀’ 캠페인')
      campaign_seed(
          slug: 'campaign-young-law',
          image: 'campaigns/campaign-young-law.png',
          url: 'http://govcraft.org/p/HIM',
          category: 'Action',
          agent: 'parliament',
          title: '#피해자를_피해자로 아청법 개정을 촉구합니다',
          description: '성매수 피해 십대 여성을 보호를 위해 아동청소년법 개정을 촉구하는 프로젝트')
      campaign_seed(
          slug: 'campaign-feminst-teacher',
          image: 'campaigns/campaign-feminst-teacher.png',
          url: 'http://wouldyouparty.govcraft.org/petitions/54',
          category: 'Action',
          agent: 'citizen',
          title: '#우리에겐_페미니스트_선생님이_필요합니다',
          description: '최근 집중적으로 사이버불링 공격의 대상자가 되고 있는 페미니스트 선생님에 대한 문제 해결을 위한 캠페인')
      campaign_seed(
          slug: 'campaign-sewol',
          image: 'campaigns/campaign-sewol.png',
          url: 'http://sewolarchive.org/',
          category: 'Lab',
          agent: 'citizen',
          title: '세월호 아카이브',
          description: '세월호 참사의 기록에 시민과 연구자가 자유롭게 접근할 수 있는 세월호 아카이브를 구축합니다. 이를 통해 진상규명을 촉구하고 세월호 이후 한국 사회의 변화를 제안합니다.')

    end
  end

  def campaign_seed(options)
    slug = options[:slug]
    campaign = Campaign.find_or_initialize_by slug: slug
    campaign.assign_attributes(options)
    campaign.save!
  end

end
