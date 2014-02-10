# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create!(
	:email => 'info@neilsoncattle.com',
	:password => 'neilsonbullsrule',
	:admin => true
	)

Bull.delete_all
Bull.create!(
	name: 'Test bull 1',
	tag: '1Z',
	dob: Date.today(),
	weight: 1000,
	scrotum: 35,
	sire: 'Big Max',
	dam: 'Lady Max',
	sale_order: 1,
	polled: true,
	twin: false,
	bw: 91,
	ww: 501,
	yw: 1001,
	bw_epd: 1.1,
	ww_epd: -5,
	yw_epd: -0.5,
	milk_epd: 2)

Bull.create!(
	name: 'Test bull 2',
	tag: '2Z',
	dob: Date.today(),
	weight: 1100,
	scrotum: 36,
	sire: 'Father Bill',
	dam: 'Mother Billy',
	sale_order: 2,
	polled: true,
	twin: false,
	bw: 92,
	ww: 502,
	yw: 1200,
	bw_epd: 1,
	ww_epd: -0.9,
	yw_epd: 2,
	milk_epd: -1.4)

Bull.create!(
	name: 'Test bull 3',
	tag: '3Z',
	dob: Date.today(),
	weight: 1000,
	scrotum: 35,
	sire: 'Big Max',
	dam: 'Lady Max',
	sale_order: 3,
	polled: true,
	twin: false,
	bw: 91,
	ww: 501,
	yw: 1001,
	bw_epd: 1.1,
	ww_epd: -5,
	yw_epd: -0.5,
	milk_epd: 2)

Bull.create!(
	name: 'Test bull 4',
	tag: '4Z',
	dob: Date.today(),
	weight: 1000,
	scrotum: 35,
	sire: 'Big Max',
	dam: 'Lady Max',
	sale_order: 4,
	polled: true,
	twin: false,
	bw: 91,
	ww: 501,
	yw: 1001,
	bw_epd: 1.1,
	ww_epd: -5,
	yw_epd: -0.5,
	milk_epd: 2)
