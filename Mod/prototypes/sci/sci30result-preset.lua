local preset = {}
		
table.insert(preset, { 1 , 5 , 2 , 1  })
table.insert(preset, { 2 , 8 , 4 , 2  })
table.insert(preset, { 3 , 6 , 3 , 1  })
table.insert(preset, { 4 , 7 , 5 , 2  })
table.insert(preset, { 5 , 6 , 3 , 1  })
table.insert(preset, { 6 , 9 , 5 , 3  })
table.insert(preset, { 7 , 6 , 3 , 1  })
table.insert(preset, { 8 , 2 , 1 , 1  })
table.insert(preset, { 9 , 10, 5 , 3  })
table.insert(preset, { 10, 6 , 3 , 1  })
table.insert(preset, { 11, 8 , 5 , 2  })
table.insert(preset, { 12, 20, 10, 5  })
table.insert(preset, { 13, 10, 6 , 3  })
table.insert(preset, { 14, 20, 10, 5  })
table.insert(preset, { 15, 18, 12, 5  })
table.insert(preset, { 16, 18, 12, 5  })
table.insert(preset, { 17, 12, 10, 5  })
table.insert(preset, { 18, 60, 40, 30 })
table.insert(preset, { 19, 19, 14, 5  })
table.insert(preset, { 20, 40, 30, 20 })
table.insert(preset, { 21, 25, 15, 8  })
table.insert(preset, { 22, 25, 15, 8  })
table.insert(preset, { 23, 20, 10, 5  })
table.insert(preset, { 24, 9 , 6 , 4  })
table.insert(preset, { 25, 5 , 3 , 1  })
table.insert(preset, { 26, 5 , 3 , 1  })
table.insert(preset, { 27, 5 , 3 , 1  })
table.insert(preset, { 28, 10, 5 , 2  })
table.insert(preset, { 29, 90, 70, 50 })
table.insert(preset, { 30, 20, 10, 5  })

if settings.startup["momo-enable-30-sci-preset"].value ~= 0 then
	if data.raw.recipe["more-science-pack-1"] then
		local presetIndex = settings.startup["momo-enable-30-sci-preset"].value + 1
		for i, j in pairs(preset) do
			if data.raw.recipe["more-science-pack-".. j[1]] then
				data.raw.recipe["more-science-pack-".. j[1]].result_count = j[presetIndex]
			else
				log("MTKL no science pack ".. j[1] .. " found")
			end
		end
	end
end