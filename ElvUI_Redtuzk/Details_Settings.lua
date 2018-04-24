local RUI = select(2, ...):unpack()

function RUI:DetailsSettings()
_detalhes_global["__profiles"]["RedtuzkUI"] = {
			["show_arena_role_icon"] = true,
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["streamer_config"] = {
				["faster_updates"] = false,
				["quick_detection"] = false,
				["reset_spec_cache"] = false,
				["no_alerts"] = false,
				["disable_mythic_dungeon"] = false,
				["use_animation_accel"] = true,
			},
			["all_players_are_group"] = false,
			["use_row_animations"] = false,
			["report_heal_links"] = false,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["event_tracker"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["line_height"] = 16,
				["line_color"] = {
					0.1, -- [1]
					0.1, -- [2]
					0.1, -- [3]
					0.3, -- [4]
				},
				["font_shadow"] = "NONE",
				["font_size"] = 10,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = true,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.2, -- [4]
					},
					["locked"] = false,
					["height"] = 300,
					["width"] = 250,
				},
				["line_texture"] = "Details Serenity",
				["options_frame"] = {
				},
			},
			["report_to_who"] = "",
			["class_specs_coords"] = {
				[62] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[63] = {
					0.375, -- [1]
					0.5, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[250] = {
					0, -- [1]
					0.125, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[251] = {
					0.125, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[252] = {
					0.25, -- [1]
					0.375, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[253] = {
					0.875, -- [1]
					1, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[254] = {
					0, -- [1]
					0.125, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[255] = {
					0.125, -- [1]
					0.25, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[66] = {
					0.125, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[257] = {
					0.5, -- [1]
					0.625, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[258] = {
					0.6328125, -- [1]
					0.75, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[259] = {
					0.75, -- [1]
					0.875, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[260] = {
					0.875, -- [1]
					1, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[577] = {
					0.25, -- [1]
					0.375, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[262] = {
					0.125, -- [1]
					0.25, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[581] = {
					0.375, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[264] = {
					0.375, -- [1]
					0.5, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[265] = {
					0.5, -- [1]
					0.625, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[266] = {
					0.625, -- [1]
					0.75, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[267] = {
					0.75, -- [1]
					0.875, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[268] = {
					0.625, -- [1]
					0.75, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[269] = {
					0.875, -- [1]
					1, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[270] = {
					0.75, -- [1]
					0.875, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[70] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[102] = {
					0.375, -- [1]
					0.5, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[71] = {
					0.875, -- [1]
					1, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[103] = {
					0.5, -- [1]
					0.625, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[72] = {
					0, -- [1]
					0.125, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[104] = {
					0.625, -- [1]
					0.75, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[73] = {
					0.125, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[64] = {
					0.5, -- [1]
					0.625, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[105] = {
					0.75, -- [1]
					0.875, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[65] = {
					0, -- [1]
					0.125, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[256] = {
					0.375, -- [1]
					0.5, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[261] = {
					0, -- [1]
					0.125, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[263] = {
					0.25, -- [1]
					0.375, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
			},
			["profile_save_pos"] = true,
			["tooltip"] = {
				["header_statusbar"] = {
					0.3, -- [1]
					0.3, -- [2]
					0.3, -- [3]
					0.8, -- [4]
					false, -- [5]
					false, -- [6]
					"WorldState Score", -- [7]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["tooltip_max_targets"] = 2,
				["icon_size"] = {
					["W"] = 13,
					["H"] = 13,
				},
				["tooltip_max_pets"] = 2,
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["show_amount"] = false,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["fontsize"] = 10,
				["background"] = {
					0.196, -- [1]
					0.196, -- [2]
					0.196, -- [3]
					0.8697, -- [4]
				},
				["submenu_wallpaper"] = true,
				["fontsize_title"] = 10,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["commands"] = {
				},
				["tooltip_max_abilities"] = 6,
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Details BarBorder 3",
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
				["maximize_method"] = 1,
				["border_size"] = 14,
				["fontshadow"] = false,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["menus_bg_coords"] = {
					0.309777336120606, -- [1]
					0.924000015258789, -- [2]
					0.213000011444092, -- [3]
					0.279000015258789, -- [4]
				},
				["icon_border_texcoord"] = {
					["R"] = 0.921875,
					["L"] = 0.078125,
					["T"] = 0.078125,
					["B"] = 0.921875,
				},
				["menus_bg_color"] = {
					0.8, -- [1]
					0.8, -- [2]
					0.8, -- [3]
					0.2, -- [4]
				},
			},
			["ps_abbreviation"] = 3,
			["world_combat_is_trash"] = false,
			["update_speed"] = 1,
			["animation_speed_mintravel"] = 0.45,
			["track_item_level"] = true,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["instances_menu_click_to_open"] = false,
			["overall_clear_newchallenge"] = true,
			["current_dps_meter"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["arena_enabled"] = true,
				["font_shadow"] = "NONE",
				["font_size"] = 18,
				["mythic_dungeon_enabled"] = true,
				["sample_size"] = 5,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = false,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.2, -- [4]
					},
					["locked"] = false,
					["height"] = 65,
					["width"] = 220,
				},
				["update_interval"] = 0.1,
				["options_frame"] = {
				},
			},
			["data_cleanup_logout"] = false,
			["instances_disable_bar_highlight"] = false,
			["trash_concatenate"] = false,
			["color_by_arena_team"] = true,
			["animation_speed"] = 33,
			["disable_stretch_from_toolbar"] = false,
			["disable_lock_ungroup_buttons"] = false,
			["memory_ram"] = 64,
			["disable_window_groups"] = false,
			["instances_suppress_trash"] = 0,
			["animation_speed_maxtravel"] = 3,
			["standard_skin"] = false,
			["font_faces"] = {
				["menus"] = "Friz Quadrata TT",
			},
			["default_bg_alpha"] = 0.5,
			["death_tooltip_width"] = 300,
			["clear_ungrouped"] = true,
			["segments_amount"] = 12,
			["report_lines"] = 5,
			["animate_scroll"] = false,
			["pvp_as_group"] = true,
			["skin"] = "WoW Interface",
			["override_spellids"] = true,
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["minimum_combat_time"] = 5,
			["force_activity_time_pvp"] = true,
			["overall_clear_newboss"] = true,
			["overall_clear_logout"] = false,
			["chat_tab_embed"] = {
				["enabled"] = false,
				["tab_name"] = "",
				["single_window"] = false,
			},
			["cloud_capture"] = true,
			["damage_taken_everything"] = false,
			["scroll_speed"] = 2,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["memory_threshold"] = 3,
			["deadlog_events"] = 32,
			["remove_realm_from_name"] = true,
			["close_shields"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONK"] = {
					0.5, -- [1]
					0.73828125, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DEMONHUNTER"] = {
					0.73828126, -- [1]
					1, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["disable_alldisplays_window"] = false,
			["player_details_window"] = {
				["scale"] = 1,
				["skin"] = "ElvUI",
				["bar_texture"] = "Skyline",
			},
			["time_type_original"] = 2,
			["trash_auto_remove"] = true,
			["animation_speed_triggertravel"] = 5,
			["clear_graphic"] = true,
			["total_abbreviation"] = 2,
			["segments_auto_erase"] = 1,
			["options_group_edit"] = true,
			["broadcaster_enabled"] = false,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["hide"] = true,
				["minimapPos"] = 254.232806982668,
				["text_format"] = 3,
				["text_type"] = 1,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["time_type"] = 2,
			["only_pvp_frags"] = false,
			["disable_stretch_button"] = true,
			["default_bg_color"] = 0.0941,
			["numerical_system_symbols"] = "auto",
			["segments_amount_to_save"] = 5,
			["segments_panic_mode"] = false,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_YELLOW"] = {
					0.9, -- [1]
					0.9, -- [2]
					0, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["MONK"] = {
					0, -- [1]
					1, -- [2]
					0.59, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["DEMONHUNTER"] = {
					0.64, -- [1]
					0.19, -- [2]
					0.79, -- [3]
				},
				["version"] = 1,
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["ARENA_GREEN"] = {
					0.1, -- [1]
					0.85, -- [2]
					0.1, -- [3]
				},
			},
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["numerical_system"] = 1,
			["overall_flag"] = 13,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["report_schema"] = 1,
			["use_scroll"] = false,
			["use_battleground_server_parser"] = true,
			["disable_reset_button"] = false,
			["data_broker_text"] = "",
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -497.500358581543,
							["x"] = 862.166381835938,
							["w"] = 399.000427246094,
							["h"] = 162.999862670898,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["backdrop_texture"] = "Details Ground",
					["color"] = {
						0.63921568627451, -- [1]
						0.63921568627451, -- [2]
						0.63921568627451, -- [3]
						0, -- [4]
					},
					["menu_anchor"] = {
						16, -- [1]
						3, -- [2]
						["side"] = 2,
					},
					["__snapV"] = false,
					["__snapH"] = false,
					["bg_r"] = 0.0941176470588235,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["auto_hide_menu"] = {
						["left"] = true,
						["right"] = false,
					},
					["hide_out_of_combat"] = false,
					["__was_opened"] = true,
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["switch_healer"] = false,
					["micro_displays_locked"] = true,
					["bars_sort_direction"] = 1,
					["menu_icons_size"] = 1,
					["bars_grow_direction"] = 1,
					["menu_anchor_down"] = {
						16, -- [1]
						-3, -- [2]
					},
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textYMod"] = 1,
								["textXMod"] = 0,
								["textFace"] = "Accidental Presidency",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["segmentType"] = 2,
								["textXMod"] = 0,
								["textFace"] = "Accidental Presidency",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textFace"] = "Accidental Presidency",
								["textXMod"] = 6,
								["textAlign"] = 0,
								["timeType"] = 1,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["version"] = 3,
					["row_info"] = {
						["textR_outline"] = true,
						["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
						["textL_outline"] = true,
						["textR_outline_small"] = true,
						["textR_show_data"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
						["percent_type"] = 1,
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["texture_background_class_color"] = false,
						["textL_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["font_face_file"] = "Interface\\Addons\\SharedMediaAdditionalFonts\\fonts\\remissis sb.ttf",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["models"] = {
							["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
							["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
							["upper_alpha"] = 0.5,
							["lower_enabled"] = false,
							["lower_alpha"] = 0.1,
							["upper_enabled"] = false,
						},
						["height"] = 19,
						["texture_file"] = "Interface\\Addons\\SharedMedia\\statusbar\\MelliDark",
						["texture_custom_file"] = "Interface\\",
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
						["icon_grayscale"] = false,
						["font_size"] = 10,
						["use_spec_icons"] = true,
						["textR_enable_custom_text"] = true,
						["backdrop"] = {
							["enabled"] = false,
							["texture"] = "1 Pixel",
							["color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["size"] = 1,
						},
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
						["textL_show_number"] = true,
						["texture"] = "Melli Dark",
						["start_after_icon"] = false,
						["textR_custom_text"] = "{data2} ({data1} | {data3}%)",
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.150228589773178, -- [4]
						},
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textL_enable_custom_text"] = false,
						["textL_outline_small"] = false,
						["texture_background"] = "Empty",
						["alpha"] = 1,
						["textL_class_colors"] = true,
						["textR_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["no_icon"] = false,
						["textR_class_colors"] = true,
						["texture_custom"] = "",
						["font_face"] = "Remissis",
						["texture_class_colors"] = true,
						["texture_background_file"] = "Interface\\Addons\\SharedMedia\\statusbar\\Empty",
						["fast_ps_update"] = false,
						["textR_separator"] = "|",
						["textR_bracket"] = "(",
					},
					["__locked"] = true,
					["menu_alpha"] = {
						["enabled"] = false,
						["onenter"] = 1,
						["iconstoo"] = true,
						["ignorebars"] = false,
						["onleave"] = 1,
					},
					["show_statusbar"] = false,
					["switch_tank_in_combat"] = false,
					["skin"] = "Safe Skin Legion Beta",
					["strata"] = "LOW",
					["grab_on_top"] = false,
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						false, -- [6]
						["space"] = -2,
						["shadow"] = false,
					},
					["desaturated_menu"] = false,
					["micro_displays_side"] = 2,
					["statusbar_info"] = {
						["alpha"] = 0,
						["overlay"] = {
							0.63921568627451, -- [1]
							0.63921568627451, -- [2]
							0.63921568627451, -- [3]
						},
					},
					["window_scale"] = 1,
					["libwindow"] = {
						["y"] = 20.9997138977051,
						["x"] = -5.000244140625,
						["point"] = "BOTTOMRIGHT",
					},
					["show_sidebars"] = false,
					["bars_inverted"] = false,
					["hide_icon"] = true,
					["switch_healer_in_combat"] = false,
					["bg_alpha"] = 0,
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.0941176470588235,
					["switch_damager_in_combat"] = false,
					["hide_in_combat"] = false,
					["posicao"] = {
						["normal"] = {
							["y"] = -497.500358581543,
							["x"] = 862.166381835938,
							["w"] = 399.000427246094,
							["h"] = 162.999862670898,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["ignore_mass_showhide"] = false,
					["plugins_grow_direction"] = 1,
					["wallpaper"] = {
						["enabled"] = false,
						["texcoord"] = {
							0, -- [1]
							1, -- [2]
							0, -- [3]
							0.7, -- [4]
						},
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["anchor"] = "all",
						["height"] = 114.042518615723,
						["alpha"] = 0.5,
						["width"] = 283.000183105469,
					},
					["stretch_button_side"] = 1,
					["switch_damager"] = false,
					["skin_custom"] = "This Skin",
					["attribute_text"] = {
						["enabled"] = false,
						["shadow"] = false,
						["side"] = 1,
						["text_size"] = 12,
						["custom_text"] = "{name}",
						["text_face"] = "Remissis",
						["anchor"] = {
							-18, -- [1]
							3, -- [2]
						},
						["show_timer"] = {
							false, -- [1]
							true, -- [2]
							true, -- [3]
						},
						["enable_custom_text"] = false,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
					},
					["bg_b"] = 0.0941176470588235,
				}, -- [1]
			},
			["instances_no_libwindow"] = false,
			["deadlog_limit"] = 16,
			["instances_segments_locked"] = false,
		}
end