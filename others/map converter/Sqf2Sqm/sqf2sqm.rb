############################################################################
#	Sqf2Sqm.rb
#	Description: Convers ArmA2 3D editor file (.sqf) to ArmA2 default editor file (.sqm)
#	Author: Rommel
#	Revision: 0.7
#
#	GNU Lesser General Public License
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You did not receive a copy of the GNU General Public License
#    along with this program. See <http://www.gnu.org/licenses/>
#
############################################################################
# define needed functions
######################################

class Formats
	VERSION = 0.7
	GROUP = open("formats/fgroup.xsqm") { |f|
	  f.read
	}
	MARKER = open("formats/fmarker.xsqm") { |f|
	  f.read
	}
	SENSOR = open("formats/fsensor.xsqm") { |f|
	  f.read
	}
	UNIT = open("formats/funit.xsqm") { |f|
	  f.read
	}
	VEHICLE = open("formats/fveh.xsqm") { |f|
	  f.read
	}
end

def abort
	puts "\nExiting program in 5 seconds..."
	sleep 5
	Process.exit
end

def get_string(a,b,c)
	b = a.index(b) || 0
	c = a.index(c) || b 
	r = a[b...c]
	return r
end

def get_stringR(a,b,c)
	b = a.index(b) || 0
	c = a.rindex(c) || b 
	r = a[b...c]
end

def get_block(string)
	block = get_stringR(string,"if","};")
	return block
end

def to_vehicle(block,itemno)
	#get data
	string = get_string(block,"(",")")
	string = string.gsub("(","")
	v_condition = string
	string = get_string(block,"[",";")
	string[/\[("[0-9A-Za-z_]+")/] #class
	v_class = $1.to_s() || "objNull"
	string[/\[([\d\w\.-]+), ([\d\w\.-]+),? ?([\d\w\.\.-]+)?\]/]
	x = $1.to_s() || "0"
	y = $2.to_s() || "0"
	z = $3.to_s() || "0"
	x = "0" if x.length < 1
	y = "0" if y.length < 1
	z = "0" if z.length < 1
	
	v_position = ("{" << x << "," << z << "," << y << "}")
	v_init = ("")
	string[/\[(["'A-Z0-9a-z_,]+)?\]/] #markers
	v_markers = $1.to_s() || "[]"
	string[/([\d]+), "\]/] #placement radius
	v_radius = $1.to_s() || "0"
	string[/ "([\d\w]+)"\]/] #special
	v_special = $1.to_s() || "CAN_COLLIDE"
	string[/[\s]+setvehicleinit[\s]+"([\w\d\s+-;]+)"/]
	v_init += $1.to_s() || ""
	
	string = block[/setdir[\s]+([\w\d\s\.+-]+)/] #direction
	v_azimut = $1.to_s() || "0"
	v_azimut = "0" if v_azimut.length < 1
	
	#format data
	ret = Formats::VEHICLE
	ret = ret.gsub("str_cop",v_condition)
	ret = ret.gsub("int_number",itemno.to_s())
	ret = ret.gsub("str_class",v_class)
	ret = ret.gsub("array_position",v_position)
	ret = ret.gsub("float_dir",v_azimut)
	ret = ret.gsub("int_id",$id.to_s())
	ret = ret.gsub("str_init",v_init)

	return ret
end

######################################
# header
######################################

puts (" .d8888b.   .d88888b.  8888888888 .d8888b.   .d8888b.   .d88888b.  888b     d888 \rd88P  Y88b d88P   Y88b 888       d88P  Y88b d88P  Y88b d88P   Y88b 8888b   d8888 \rY88b.      888     888 888              888 Y88b.      888     888 88888b.d88888 \r  Y888b.   888     888 8888888        .d88P   Y888b.   888     888 888Y88888P888 \r     Y88b. 888     888 888        .od888P        Y88b. 888     888 888 Y888P 888 \r       888 888 Y8b 888 888       d88P              888 888 Y8b 888 888  Y8P  888 \rY88b  d88P Y88b.Y8b88P 888       888        Y88b  d88P Y88b.Y8b88P 888       888 \r  Y8888P     Y888888   888       888888888    Y8888P     Y888888   888       888 \n")
puts ("Version: " << Formats::VERSION.to_s() << "\nby Rommel\n\n")

sleep 1

######################################
# open required files
######################################

if ARGV.length == 0
	puts "ERROR: No File given"
	abort
end
sqf_file = ARGV[0]
if (not sqf_file.include? ".sqf") then
	puts "ERROR: Incorrect file type given!!!"
	abort
end
puts ("Reading File " << sqf_file)

sqf = open(sqf_file) { |f|
  f.read
}
sqm = open(Dir.pwd << "/formats/mission.xsqm") { |f|
  f.read
}

######################################
# global variables
######################################

$id = 0

######################################
# format the main strings
######################################

#ensure all lowercase
sqm = sqm.downcase
sqf = sqf.downcase

#input the addons
if not sqf.include?("activateaddons")
	puts "WARNING: Missing required Addons"
	addons = ""
else 
	addons = get_string(sqf,"[",";")
	addons = addons.gsub('[',"")
	addons = addons.gsub(']',"")
end
sqm = sqm.gsub("code_addons",addons)

#input the version number
sqm = sqm.gsub("str_version") {|s| s=(10 + rand(5)).to_s()}

#input the random seed
sqm = sqm.gsub("str_randomseed") {|s| s=(10000 + rand(10000)).to_s()}

#input the date settings
sqf[/setDate \[([\d\.,]+)\]/]
date = $1
if date.nil?
	puts "WARNING: Missing required Intel (Date/Weather Information)"
	date = "1986,2,25,16,0"
end
date = date.split(",")

sqm = sqm.gsub("int_year",date[0])
sqm = sqm.gsub("int_month",date[1])
sqm = sqm.gsub("int_day",date[2])
sqm = sqm.gsub("int_hour",date[3])
sqm = sqm.gsub("int_minute",date[4])

sqm = sqm.gsub("float_startweather") {|s| s=((rand 100.0) / 100.0).to_s()}
sqm = sqm.gsub("float_forecastweather") {|s| s=((rand 100.0) / 100.0).to_s()}

#split into approximate blocks for simplification
asqf = sqf.split("objnull")

######################################
# parse file
######################################

groups = ""
markers = ""
sensors = ""
units = ""
vehicles = ""

group_count = 0
marker_count = 0
sensor_count = 0 
unit_count = 0
vehicle_count = 0

asqf.each do |e|
	block = get_block(e)
	entry = ""
	if (block.include? "createvehicle") then
		entry = to_vehicle(block,vehicle_count) || ""
		vehicle_count += 1
		vehicles += (entry << "\r")
	else
		if (block.include? "createunit") then
			puts "WARNING: Current Version does not support units"
			#unit_count += 1
			#units += (entry << "\r")
		end
	end
	#sqf = sqf.gsub(block,"") #removes blocks as you go
	if not entry.nil? || entry.length < 1
		$id += 1
		#puts entry.to_s()
	end
end

group_count = group_count.to_s()
marker_count = marker_count.to_s()
sensor_count = sensor_count.to_s()
unit_count = unit_count.to_s()
vehicle_count = vehicle_count.to_s()

sqm = sqm.gsub("int_g_items",group_count.to_s())
sqm = sqm.gsub("code_groups;",groups)

sqm = sqm.gsub("int_m_items",marker_count.to_s())
sqm = sqm.gsub("code_markers;",markers)

sqm = sqm.gsub("int_s_items",sensor_count.to_s())
sqm = sqm.gsub("code_sensors;",sensors)

sqm = sqm.gsub("int_v_items",vehicle_count.to_s())
sqm = sqm.gsub("code_vehicles;",vehicles)

sleep 0.25

puts ("\nConverted " << group_count << " groups")
puts ("\rConverted " << marker_count << " markers")
puts ("\rConverted " << sensor_count << " sensors")
puts ("\rConverted " << unit_count << " units")
puts ("\rConverted " << vehicle_count << " vehicles")

######################################
# write the new string to a sqm file
######################################

sleep 0.25

puts ("\nWriting to " << Dir.pwd << "/mission.sqm")

open("mission.sqm", "w") { |f|
	f.puts sqm
}

puts ("\nFile operations completed")

sleep 1

abort