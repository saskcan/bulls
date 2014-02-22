task updateHorns: :environment do
	bulls = Bull.all
	bulls.each do |bull|
		if bull.polled?
			bull.horns = "polled"
		else
			bull.horns = "horned"
		end
		bull.save
	end
end

task buildDams: :environment do
	bulls = Bull.all
	bulls.each do |bull|
		cow = Cow.new
		cow.name = bull.dam
		cow.save
		bull.dam_id = cow.id
		bull.save
	end
end