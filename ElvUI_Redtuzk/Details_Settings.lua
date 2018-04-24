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
			["player_details_window"] = {
				["scale"] = 1,
				["bar_texture"] = "Skyline",
				["skin"] = "ElvUI",
			},
			["all_players_are_group"] = false,
			["use_row_animations"] = true,
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
				["fontsize"] = 12,
				["background"] = {
					0.196078431372549, -- [1]
					0.196078431372549, -- [2]
					0.196078431372549, -- [3]
					1, -- [4]
				},
				["submenu_wallpaper"] = true,
				["fontsize_title"] = 10,
				["icon_border_texcoord"] = {
					["B"] = 0.921875,
					["L"] = 0.078125,
					["T"] = 0.078125,
					["R"] = 0.921875,
				},
				["commands"] = {
				},
				["tooltip_max_abilities"] = 6,
				["fontface"] = "Century Gothic Bold",
				["border_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Redtuzk's Pixelborder",
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontshadow"] = true,
				["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
				["border_size"] = 1,
				["maximize_method"] = 1,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["menus_bg_coords"] = {
					0.31, -- [1]
					0.924000015258789, -- [2]
					0.213000011444092, -- [3]
					0.279000015258789, -- [4]
				},
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["menus_bg_color"] = {
					0.799998223781586, -- [1]
					0.799998223781586, -- [2]
					0.799998223781586, -- [3]
					0.200000017881393, -- [4]
				},
			},
			["ps_abbreviation"] = 3,
			["world_combat_is_trash"] = false,
			["pvp_as_group"] = true,
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
			["instances_disable_bar_highlight"] = true,
			["trash_concatenate"] = false,
			["color_by_arena_team"] = true,
			["animation_speed"] = 33,
			["disable_stretch_from_toolbar"] = false,
			["disable_lock_ungroup_buttons"] = false,
			["memory_ram"] = 64,
			["disable_window_groups"] = false,
			["instances_suppress_trash"] = 0,
			["animation_speed_maxtravel"] = 3,
			["deny_score_messages"] = false,
			["deadlog_limit"] = 16,
			["font_faces"] = {
				["menus"] = "Expressway",
			},
			["instances_segments_locked"] = false,
			["instances_no_libwindow"] = false,
			["data_broker_text"] = "",
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -423.885318916287,
							["x"] = 832.538395368054,
							["w"] = 215.065856933594,
							["h"] = 206.2919921875,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["show_statusbar"] = false,
					["menu_icons_size"] = 1.25,
					["color"] = {
						0.211764705882353, -- [1]
						0.282352941176471, -- [2]
						0.568627450980392, -- [3]
						0, -- [4]
					},
					["menu_anchor"] = {
						18, -- [1]
						7, -- [2]
						["side"] = 2,
					},
					["__snapV"] = false,
					["__snapH"] = false,
					["bg_r"] = 0,
					["switch_healer_in_combat"] = false,
					["micro_displays_side"] = 2,
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
					["skin_custom"] = "",
					["stretch_button_side"] = 1,
					["switch_tank"] = false,
					["menu_anchor_down"] = {
						15, -- [1]
						-3, -- [2]
					},
					["micro_displays_locked"] = true,
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
								["textFace"] = "Accidental Presidency",
								["textXMod"] = 0,
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
								["timeType"] = 1,
								["textXMod"] = 6,
								["textAlign"] = 0,
								["textFace"] = "Accidental Presidency",
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
					},
					["switch_damager_in_combat"] = false,
					["switch_all_roles_in_combat"] = false,
					["switch_tank_in_combat"] = false,
					["version"] = 3,
					["row_info"] = {
						["textR_outline"] = true,
						["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
						["textL_outline"] = true,
						["textR_outline_small"] = true,
						["textL_outline_small"] = true,
						["textL_enable_custom_text"] = false,
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
						["start_after_icon"] = false,
						["font_face_file"] = "Interface\\Addons\\Redtuzk Media\\GOTHICB.TTF",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["models"] = {
							["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
							["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
							["upper_alpha"] = 0.5,
							["lower_enabled"] = false,
							["lower_alpha"] = 0.1,
							["upper_enabled"] = false,
						},
						["texture_custom_file"] = "Interface\\",
						["texture_file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\normTex2.tga",
						["height"] = 19,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["icon_grayscale"] = false,
						["font_size"] = 12,
						["textR_bracket"] = "(",
						["texture_custom"] = "",
						["backdrop"] = {
							["enabled"] = false,
							["size"] = 1,
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["texture"] = "Redtuzk's Pixelborder",
						},
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0, -- [4]
						},
						["textL_show_number"] = false,
						["texture"] = "ElvUI Norm",
						["textR_enable_custom_text"] = false,
						["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0, -- [4]
						},
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["texture_background_file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\normTex2.tga",
						["texture_background"] = "ElvUI Norm",
						["textR_class_colors"] = false,
						["textR_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["textL_class_colors"] = false,
						["alpha"] = 0,
						["no_icon"] = false,
						["textR_show_data"] = {
							true, -- [1]
							true, -- [2]
							false, -- [3]
						},
						["textL_outline_small_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["font_face"] = "Century Gothic Bold",
						["texture_class_colors"] = true,
						["percent_type"] = 1,
						["fast_ps_update"] = true,
						["textR_separator"] = "NONE",
						["use_spec_icons"] = true,
					},
					["__locked"] = true,
					["menu_alpha"] = {
						["enabled"] = false,
						["onenter"] = 1,
						["iconstoo"] = true,
						["ignorebars"] = false,
						["onleave"] = 1,
					},
					["hide_in_combat_type"] = 1,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["bg_b"] = 0.454901960784314,
					["strata"] = "LOW",
					["grab_on_top"] = false,
					["__snap"] = {
					},
					["ignore_mass_showhide"] = false,
					["hide_in_combat_alpha"] = 0,
					["plugins_grow_direction"] = 1,
					["menu_icons"] = {
						false, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						false, -- [5]
						false, -- [6]
						["space"] = 0,
						["shadow"] = true,
					},
					["switch_damager"] = false,
					["auto_hide_menu"] = {
						["left"] = true,
						["right"] = false,
					},
					["bg_alpha"] = 0,
					["window_scale"] = 0.990000009536743,
					["bars_grow_direction"] = 1,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["statusbar_info"] = {
						["alpha"] = 0,
						["overlay"] = {
							0.211764705882353, -- [1]
							0.282352941176471, -- [2]
							0.568627450980392, -- [3]
						},
					},
					["hide_icon"] = true,
					["libwindow"] = {
						["y"] = 14.0000893797064,
						["x"] = -21.0039038259711,
						["point"] = "BOTTOMRIGHT",
					},
					["backdrop_texture"] = "ElvUI Blank",
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.0509803921568627,
					["skin"] = "Serenity",
					["hide_in_combat"] = false,
					["posicao"] = {
						["normal"] = {
							["y"] = -423.885318916287,
							["x"] = 832.538395368054,
							["w"] = 215.065856933594,
							["h"] = 206.2919921875,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["switch_all_roles_after_wipe"] = false,
					["show_sidebars"] = false,
					["wallpaper"] = {
						["enabled"] = false,
						["width"] = 266.000061035156,
						["texcoord"] = {
							0.0480000019073486, -- [1]
							0.298000011444092, -- [2]
							0.630999984741211, -- [3]
							0.755999984741211, -- [4]
						},
						["overlay"] = {
							0.999997794628143, -- [1]
							0.999997794628143, -- [2]
							0.999997794628143, -- [3]
							0.266666084527969, -- [4]
						},
						["anchor"] = "all",
						["height"] = 225.999984741211,
						["alpha"] = 0.266666680574417,
						["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = false,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["bars_sort_direction"] = 1,
					["attribute_text"] = {
						["enabled"] = false,
						["shadow"] = true,
						["side"] = 1,
						["text_size"] = 12,
						["custom_text"] = "{name}",
						["text_face"] = "Expressway",
						["anchor"] = {
							-17, -- [1]
							2, -- [2]
						},
						["show_timer"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
						["enable_custom_text"] = false,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.7, -- [4]
						},
					},
					["desaturated_menu"] = false,
					["bars_inverted"] = false,
				}, -- [1]
			},
			["report_lines"] = 2,
			["segments_amount"] = 12,
			["use_battleground_server_parser"] = true,
			["skin"] = "WoW Interface",
			["override_spellids"] = true,
			["death_tooltip_width"] = 300,
			["report_schema"] = 1,
			["use_scroll"] = false,
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["overall_clear_logout"] = false,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["cloud_capture"] = true,
			["damage_taken_everything"] = false,
			["scroll_speed"] = 2,
			["font_sizes"] = {
				["menus"] = 12,
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
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
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
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
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
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["ENEMY"] = {
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
			["standard_skin"] = {
				["hide_in_combat_type"] = 1,
				["menu_icons_size"] = 0.800000011920929,
				["color"] = {
					0.211764705882353, -- [1]
					0.282352941176471, -- [2]
					0.568627450980392, -- [3]
					1, -- [4]
				},
				["menu_anchor"] = {
					17, -- [1]
					-1, -- [2]
					["side"] = 2,
				},
				["bg_r"] = 0,
				["hide_out_of_combat"] = false,
				["following"] = {
					["bar_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["enabled"] = false,
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
				["skin_custom"] = "",
				["bg_b"] = 0.454901960784314,
				["name"] = "",
				["row_info"] = {
					["textR_outline"] = true,
					["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
					["textL_outline"] = true,
					["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
					["textR_show_data"] = {
						true, -- [1]
						true, -- [2]
						false, -- [3]
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
					["start_after_icon"] = false,
					["font_face_file"] = "Interface\\AddOns\\Redtuzk's Pixelborder\\Expressway.ttf",
					["textL_custom_text"] = "{data1}. {data3}{data2}",
					["font_size"] = 12,
					["height"] = 18,
					["texture_file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\normTex2.tga",
					["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
					["textR_bracket"] = "(",
					["texture_custom"] = "",
					["fixed_texture_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["textL_show_number"] = false,
					["backdrop"] = {
						["enabled"] = false,
						["texture"] = "Redtuzk's Pixelborder",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["size"] = 1,
					},
					["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
					["texture"] = "ElvUI Norm",
					["texture_custom_file"] = "Interface\\",
					["models"] = {
						["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
						["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
						["upper_alpha"] = 0.5,
						["lower_enabled"] = false,
						["lower_alpha"] = 0.1,
						["upper_enabled"] = false,
					},
					["textR_class_colors"] = false,
					["textR_enable_custom_text"] = false,
					["fixed_texture_background_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["textL_class_colors"] = false,
					["alpha"] = 0,
					["no_icon"] = false,
					["texture_background"] = "ElvUI Norm",
					["texture_background_file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\normTex2.tga",
					["font_face"] = "Expressway",
					["texture_class_colors"] = true,
					["textL_enable_custom_text"] = false,
					["fast_ps_update"] = false,
					["textR_separator"] = "NONE",
					["use_spec_icons"] = true,
				},
				["tooltip"] = {
					["n_abilities"] = 3,
					["n_enemies"] = 3,
				},
				["show_sidebars"] = false,
				["stretch_button_side"] = 1,
				["switch_all_roles_in_combat"] = false,
				["instance_button_anchor"] = {
					-27, -- [1]
					1, -- [2]
				},
				["version"] = 3,
				["attribute_text"] = {
					["enabled"] = true,
					["shadow"] = false,
					["side"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.7, -- [4]
					},
					["custom_text"] = "{name}",
					["text_face"] = "Accidental Presidency",
					["anchor"] = {
						-17, -- [1]
						2, -- [2]
					},
					["text_size"] = 12,
					["enable_custom_text"] = false,
					["show_timer"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["ignore_mass_showhide"] = false,
				["menu_alpha"] = {
					["enabled"] = false,
					["onleave"] = 1,
					["ignorebars"] = false,
					["iconstoo"] = true,
					["onenter"] = 1,
				},
				["backdrop_texture"] = "Details Ground",
				["plugins_grow_direction"] = 1,
				["libwindow"] = {
					["y"] = 57.0018661805152,
					["x"] = -131.002794028114,
					["point"] = "BOTTOMRIGHT",
				},
				["strata"] = "LOW",
				["micro_displays_side"] = 2,
				["window_scale"] = 0.998821496963501,
				["switch_tank"] = false,
				["hide_in_combat_alpha"] = 0,
				["switch_all_roles_after_wipe"] = false,
				["menu_icons"] = {
					false, -- [1]
					false, -- [2]
					false, -- [3]
					false, -- [4]
					false, -- [5]
					false, -- [6]
					["space"] = 0,
					["shadow"] = false,
				},
				["desaturated_menu"] = false,
				["statusbar_info"] = {
					["alpha"] = 1,
					["overlay"] = {
						0.211764705882353, -- [1]
						0.282352941176471, -- [2]
						0.568627450980392, -- [3]
					},
				},
				["menu_anchor_down"] = {
					15, -- [1]
					-3, -- [2]
				},
				["bars_grow_direction"] = 1,
				["switch_healer_in_combat"] = false,
				["bg_alpha"] = 0.940000001341105,
				["hide_icon"] = true,
				["grab_on_top"] = false,
				["micro_displays_locked"] = true,
				["switch_damager_in_combat"] = false,
				["auto_current"] = true,
				["toolbar_side"] = 1,
				["bg_g"] = 0.0509803921568627,
				["row_show_animation"] = {
					["anim"] = "Fade",
					["options"] = {
					},
				},
				["hide_in_combat"] = false,
				["switch_damager"] = false,
				["show_statusbar"] = false,
				["auto_hide_menu"] = {
					["left"] = false,
					["right"] = false,
				},
				["wallpaper"] = {
					["overlay"] = {
						0.999997794628143, -- [1]
						0.999997794628143, -- [2]
						0.999997794628143, -- [3]
						0.266666084527969, -- [4]
					},
					["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
					["texcoord"] = {
						0.0480000019073486, -- [1]
						0.298000011444092, -- [2]
						0.630999984741211, -- [3]
						0.755999984741211, -- [4]
					},
					["enabled"] = false,
					["anchor"] = "all",
					["height"] = 225.999984741211,
					["alpha"] = 0.266666680574417,
					["width"] = 266.000061035156,
				},
				["total_bar"] = {
					["enabled"] = false,
					["only_in_group"] = false,
					["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
					["color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
				},
				["skin"] = "Serenity",
				["bars_sort_direction"] = 1,
				["switch_tank_in_combat"] = false,
				["bars_inverted"] = false,
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
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
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
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
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
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
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
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
			},
			["trash_auto_remove"] = true,
			["broadcaster_enabled"] = false,
			["clear_graphic"] = true,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["segments_auto_erase"] = 1,
			["options_group_edit"] = false,
			["segments_amount_to_save"] = 5,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["text_type"] = 1,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["hide"] = true,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["numerical_system_symbols"] = "auto",
			["only_pvp_frags"] = false,
			["disable_stretch_button"] = true,
			["default_bg_color"] = 0.0941,
			["animation_speed_triggertravel"] = 5,
			["total_abbreviation"] = 2,
			["segments_panic_mode"] = false,
			["time_type_original"] = 2,
			["numerical_system"] = 1,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["chat_tab_embed"] = {
				["enabled"] = false,
				["tab_name"] = "",
				["single_window"] = false,
				["w1_pos"] = {
					["y"] = 12.859322872059,
					["x"] = -9.00015371033805,
					["point"] = "BOTTOMRIGHT",
					["pos_table"] = true,
					["x_legacy"] = 752.042164843242,
					["y_legacy"] = -440.526022616289,
					["w"] = 401.934600830078,
					["h"] = 174.978988647461,
				},
			},
			["minimum_combat_time"] = 5,
			["overall_flag"] = 15,
			["force_activity_time_pvp"] = true,
			["overall_clear_newboss"] = true,
			["clear_ungrouped"] = true,
			["disable_reset_button"] = false,
			["animate_scroll"] = false,
			["update_speed"] = 0.0500000007450581,
			["time_type"] = 2,
			["default_bg_alpha"] = 0.5,
			["streamer_config"] = {
				["faster_updates"] = false,
				["quick_detection"] = false,
				["reset_spec_cache"] = false,
				["no_alerts"] = false,
				["disable_mythic_dungeon"] = false,
				["use_animation_accel"] = true,
			},
		}
end