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