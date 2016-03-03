class CreatePlanService
  def call
    p1 = Plan.where(name: 'Humidor').first_or_initialize do |p|
      p.amount = 4900
      p.interval = 'month'
      p.stripe_id = 'humidor'
    end
    p1.save!(:validate => false)
    p2 = Plan.where(name: 'Herfador').first_or_initialize do |p|
      p.amount = 2900
      p.interval = 'month'
      p.stripe_id = 'herfador'
    end
    p2.save!(:validate => false)
    p3 = Plan.where(name: 'Glass Tube').first_or_initialize do |p|
      p.amount = 900
      p.interval = 'month'
      p.stripe_id = 'glass_tube'
    end
    p3.save!(:validate => false)
  end
end
