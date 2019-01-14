local RUI = select(2, ...):unpack()

function RUI:ChatTweaksSettings(layout)
    ElvUI_ChatTweaksDB = {
        ["namespaces"] = {
            ["EmoteFilter"] = {
            },
            ["AutoWelcome"] = {
                ["global"] = {
                    ["chance"] = 70,
                    ["messages"] = {
                        "Welcome #name#!", -- [1]
                        "Welcome!", -- [2]
                        "Welcome to the guild!", -- [3]
                    },
                },
            },
            ["SpamLog"] = {
            },
            ["DamageMeters"] = {
                ["global"] = {
                    ["Party Leader"] = 2,
                    ["Raid Leader"] = 2,
                    ["Yell"] = 2,
                    ["Instance Chat Leader"] = 2,
                    ["Instance Chat"] = 2,
                    ["Party"] = 2,
                    ["Whisper"] = 2,
                    ["Channel"] = 2,
                    ["Say"] = 2,
                    ["Raid"] = 2,
                    ["Guild"] = 2,
                    ["Officer"] = 2,
                },
            },
            ["PetBattles"] = {
            },
            ["WhisperFilter"] = {
            },
            ["FunFilters"] = {
                ["global"] = {
                    ["mode"] = "baltcaps",
                },
            },
            ["AutoCongratulate"] = {
                ["global"] = {
                    ["single"] = {
                        "Congrats #name#!", -- [1]
                        "Grats #name#!", -- [2]
                        "Congrats!", -- [3]
                        "grats!", -- [4]
                    },
                    ["nearby"] = false,
                    ["multiple"] = {
                        "Congrats Everyone!", -- [1]
                        "Congrats All!", -- [2]
                        "grats everyone!", -- [3]
                    },
                    ["party"] = false,
                    ["chance"] = 70,
                    ["raid"] = false,
                },
            },
            ["ChannelColors"] = {
                ["global"] = {
                    ["colors"] = {
                        ["General"] = {
                            ["r"] = 0.827451050281525,
                            ["g"] = 0.211764723062515,
                            ["b"] = 0.509803950786591,
                        },
                        ["Instance Leader"] = {
                            ["r"] = 0.796078431372549,
                            ["g"] = 0.294117647058824,
                            ["b"] = 0.0862745098039216,
                        },
                        ["Raid Leader"] = {
                            ["r"] = 0.796078431372549,
                            ["g"] = 0.294117647058824,
                            ["b"] = 0.0862745098039216,
                        },
                        ["OFFICER"] = {
                            ["r"] = 0.521568655967712,
                            ["g"] = 0.600000023841858,
                            ["b"] = 0,
                        },
                        ["PARTY"] = {
                            ["r"] = 0.423529446125031,
                            ["g"] = 0.443137288093567,
                            ["b"] = 0.764705955982208,
                        },
                        ["BN_WHISPER"] = {
                            ["r"] = 0.164705887436867,
                            ["g"] = 0.631372570991516,
                            ["b"] = 0.596078455448151,
                        },
                        ["Party"] = {
                            ["r"] = 0.423529411764706,
                            ["g"] = 0.443137254901961,
                            ["b"] = 0.764705882352941,
                        },
                        ["ElvUIGVC"] = {
                            ["r"] = 0.827451050281525,
                            ["g"] = 0.211764723062515,
                            ["b"] = 0.509803950786591,
                        },
                        ["PARTY_LEADER"] = {
                            ["r"] = 0.423529446125031,
                            ["g"] = 0.443137288093567,
                            ["b"] = 0.764705955982208,
                        },
                        ["Trade"] = {
                            ["r"] = 0.827451050281525,
                            ["g"] = 0.211764723062515,
                            ["b"] = 0.509803950786591,
                        },
                        ["SAY"] = {
                            ["r"] = 0.99215692281723,
                            ["g"] = 0.964705944061279,
                            ["b"] = 0.890196144580841,
                        },
                        ["Guild"] = {
                            ["r"] = 0.52156862745098,
                            ["g"] = 0.6,
                            ["b"] = 0,
                        },
                        ["Raid Warning"] = {
                            ["r"] = 0.862745098039216,
                            ["g"] = 0.196078431372549,
                            ["b"] = 0.184313725490196,
                        },
                        ["Whisper"] = {
                            ["r"] = 1,
                            ["g"] = 0.501960813999176,
                            ["b"] = 1,
                        },
                        ["Say"] = {
                            ["r"] = 0.992156862745098,
                            ["g"] = 0.964705882352941,
                            ["b"] = 0.890196078431373,
                        },
                        ["Party Leader"] = {
                            ["r"] = 0.423529411764706,
                            ["g"] = 0.443137254901961,
                            ["b"] = 0.764705882352941,
                        },
                        ["GUILD"] = {
                            ["r"] = 0.521568655967712,
                            ["g"] = 0.600000023841858,
                            ["b"] = 0,
                        },
                        ["Instance"] = {
                            ["r"] = 0.796078431372549,
                            ["g"] = 0.294117647058824,
                            ["b"] = 0.0862745098039216,
                        },
                        ["RAID"] = {
                            ["r"] = 0.796078503131867,
                            ["g"] = 0.294117659330368,
                            ["b"] = 0.0862745121121407,
                        },
                        ["INSTANCE_CHAT"] = {
                            ["r"] = 0.796078503131867,
                            ["g"] = 0.294117659330368,
                            ["b"] = 0.0862745121121407,
                        },
                        ["Yell"] = {
                            ["r"] = 0.862745098039216,
                            ["g"] = 0.196078431372549,
                            ["b"] = 0.184313725490196,
                        },
                        ["LocalDefense"] = {
                            ["r"] = 0.827451050281525,
                            ["g"] = 0.211764723062515,
                            ["b"] = 0.509803950786591,
                        },
                        ["RAID_LEADER"] = {
                            ["r"] = 0.796078503131867,
                            ["g"] = 0.294117659330368,
                            ["b"] = 0.0862745121121407,
                        },
                        ["RAID_WARNING"] = {
                            ["r"] = 0.86274516582489,
                            ["g"] = 0.196078449487686,
                            ["b"] = 0.184313729405403,
                        },
                        ["INSTANCE_CHAT_LEADER"] = {
                            ["r"] = 0.796078503131867,
                            ["g"] = 0.294117659330368,
                            ["b"] = 0.0862745121121407,
                        },
                        ["YELL"] = {
                            ["r"] = 0.86274516582489,
                            ["g"] = 0.196078449487686,
                            ["b"] = 0.184313729405403,
                        },
                        ["Real ID Whisper"] = {
                            ["r"] = 0.164705882352941,
                            ["g"] = 0.631372549019608,
                            ["b"] = 0.596078431372549,
                        },
                        ["Raid"] = {
                            ["r"] = 0.796078431372549,
                            ["g"] = 0.294117647058824,
                            ["b"] = 0.0862745098039216,
                        },
                        ["Officer"] = {
                            ["r"] = 0.52156862745098,
                            ["g"] = 0.6,
                            ["b"] = 0,
                        },
                    },
                },
            },
            ["SpamFilter"] = {
            },
            ["BloodlustAnnounce|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["GuildRecruitment|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["ChannelInviteSpam"] = {
            },
            ["GoldCalculator"] = {
            },
            ["ChannelSounds"] = {
                ["global"] = {
                    ["partyLeaderSound"] = "Whisper Alert",
                    ["instanceLeaderSound"] = "Whisper Alert",
                    ["raidLeaderSound"] = "Whisper Alert",
                },
            },
            ["Battle.netSpam"] = {
            },
            ["WhoWhisperedMe|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["AutoFarewell"] = {
            },
            ["WhoTaunted|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
                ["global"] = {
                    ["whotaunted"] = {
                        ["disable"] = true,
                    },
                },
            },
            ["Reputation"] = {
                ["global"] = {
                    ["factions"] = {
                        ["bootybay"] = false,
                        ["talanjisexpedition"] = false,
                        ["theconsortium"] = false,
                        ["shatteredsunoffensive"] = false,
                        ["bilgewatercartel"] = false,
                        ["thunderbluff"] = false,
                        ["cenarionexpedition"] = false,
                        ["everlook"] = false,
                        ["silvermooncity"] = false,
                        ["brawlgararena(season2)"] = false,
                        ["warsongoutriders"] = false,
                        ["hydraxianwaterlords"] = false,
                        ["thenightfallen"] = false,
                        ["syndicate"] = false,
                        ["zandalariempire"] = false,
                        ["armiesoflegionfall"] = false,
                        ["theshatar"] = false,
                        ["bloodsailbuccaneers"] = false,
                        ["dreamweavers"] = false,
                        ["fridgeraiders"] = false,
                        ["thehandofvengeance"] = false,
                        ["thrallmar"] = false,
                        ["ravenholdt"] = false,
                        ["voldunai"] = false,
                        ["keepersoftime"] = false,
                        ["thewyrmrestaccord"] = false,
                        ["thoriumbrotherhood"] = false,
                        ["highmountaintribe"] = false,
                        ["zandalartribe"] = false,
                        ["gadgetzan"] = false,
                        ["ratchet"] = false,
                        ["argentcrusade"] = false,
                        ["thetaunka"] = false,
                        ["cenarioncircle"] = false,
                        ["brawlgararena"] = false,
                        ["armyofthelight"] = false,
                        ["tortollanseekers"] = false,
                        ["orgrimmar"] = false,
                        ["courtoffarondis"] = false,
                        ["undercity"] = false,
                        ["championsofazeroth"] = false,
                        ["argussianreach"] = false,
                        ["huojinpandaren"] = false,
                        ["thesunreavers"] = false,
                        ["kirintor"] = false,
                        ["thealdor"] = false,
                        ["thehonorbound"] = false,
                        ["thedefilers"] = false,
                        ["valarjar"] = false,
                        ["argentdawn"] = false,
                        ["thewardens"] = false,
                        ["darkspeartrolls"] = false,
                        ["warsongoffensive"] = false,
                    },
                },
            },
            ["RepeatCommand"] = {
            },
            ["MaterialsFarming"] = {
            },
            ["Magic8-Ball"] = {
            },
            ["AFK/DNDFilter"] = {
                ["global"] = {
                    ["dnd"] = false,
                    ["afk"] = false,
                },
            },
            ["ChatTabs"] = {
            },
            ["EditBoxAltKeyArrows"] = {
            },
            ["Substitutions"] = {
            },
            ["ColorRolls"] = {
                ["global"] = {
                    ["winColor"] = {
                        ["r"] = 0.52156862745098,
                        ["g"] = 0.6,
                    },
                    ["rollColor"] = {
                        ["r"] = 0.709803921568628,
                        ["g"] = 0.537254901960784,
                    },
                    ["lossColor"] = {
                        ["r"] = 0.862745098039216,
                        ["g"] = 0.196078431372549,
                        ["b"] = 0.184313725490196,
                    },
                    ["yourColor"] = {
                        ["r"] = 0.164705882352941,
                        ["g"] = 0.631372549019608,
                        ["b"] = 0.596078431372549,
                    },
                    ["cheatsColor"] = {
                        ["r"] = 0.149019607843137,
                        ["g"] = 0.545098039215686,
                        ["b"] = 0.823529411764706,
                    },
                },
            },
            ["ImprovedAuctionMessages"] = {
            },
            ["CrapCleaner"] = {
            },
            ["Companions"] = {
                ["global"] = {
                    ["global"] = nil --[[ skipped recursive table ]],
                },
            },
            ["CustomChatFilters"] = {
            },
            ["KeystoneAnnounce|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
                ["global"] = {
                    ["lastCooldownParty"] = "0",
                    ["lastCooldownCommunity"] = "0",
                    ["lastCooldownGuild"] = "0",
                },
            },
            ["PlayerNames"] = {
                ["global"] = {
                    ["nickColor"] = {
                        ["b"] = 0.588235294117647,
                        ["g"] = 0.576470588235294,
                        ["r"] = 0.513725490196078,
                    },
                },
            },
            ["GuildSpam"] = {
            },
            ["TextJustification"] = {
            },
            ["ChannelNames|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["Datatext"] = {
            },
            ["CustomNames|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["AchievementFilter"] = {
            },
            ["Search"] = {
            },
            ["AutoSetRole"] = {
            },
            ["CustomEmotes"] = {
            },
            ["Calculator"] = {
            },
            ["PopupMessages"] = {
                ["global"] = {
                    ["filterLine"] = false,
                    ["channels"] = {
                        ["INSTANCE_CHAT"] = true,
                        ["EMOTE"] = false,
                        ["CHANNEL"] = false,
                        ["PARTY"] = true,
                        ["WHISPER"] = false,
                        ["YELL"] = false,
                        ["RAID_WARNING"] = true,
                        ["PARTY_LEADER"] = true,
                        ["RAID"] = true,
                        ["SAY"] = false,
                        ["INSTANCE_CHAT_LEADER"] = true,
                        ["RAID_LEADER"] = true,
                    },
                    ["color"] = {
                        ["g"] = 0.537254901960784,
                        ["r"] = 0.709803921568628,
                    },
                    ["playSound"] = true,
                },
                ["profiles"] = {
                    ["Soulaire - Khadgar"] = {
                        ["sink20OutputSink"] = "RaidWarning",
                    },
                },
            },
            ["ItemLevelLink|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["CustomNamedChatFilters"] = {
            },
            ["MultipleInviteCommand"] = {
            },
            ["InviteLinks"] = {
                ["global"] = {
                    ["groupWords"] = {
                        ["inv"] = "inv",
                        ["invite"] = "invite",
                    },
                    ["guildWords"] = {
                        ["ginvite"] = "ginvite",
                        ["ginv"] = "ginv",
                    },
                },
            },
            ["AltNames"] = {
            },
            ["TokenPrice|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["AuctionMessageFiltering"] = {
            },
            ["AutoDing"] = {
            },
            ["GamemenuButton|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
                ["global"] = {
                    ["gamemenu"] = {
                        ["hide"] = true,
                    },
                },
            },
            ["KeywordSounds"] = {
                ["global"] = {
                    ["channels"] = {
                        ["INSTANCE_CHAT"] = true,
                        ["RAID"] = true,
                        ["OFFICER"] = true,
                        ["PARTY"] = true,
                        ["RAID_WARNING"] = true,
                        ["PARTY_LEADER"] = true,
                        ["INSTANCE_CHAT_LEADER"] = true,
                        ["RAID_LEADER"] = true,
                    },
                },
            },
            ["AutoProfessionLink"] = {
                ["global"] = {
                    ["Guild"] = false,
                    ["Raid Leader"] = false,
                    ["Instance Chat Leader"] = false,
                    ["Instance Chat"] = false,
                    ["Party"] = false,
                    ["Whisper"] = false,
                    ["Raid"] = false,
                    ["Party Leader"] = false,
                    ["Yell"] = false,
                    ["Say"] = false,
                    ["Officer"] = false,
                },
            },
            ["LootIcons"] = {
            },
            ["XPLeftToLevel"] = {
            },
            ["ChannelNoticeFilter"] = {
            },
            ["RerouteAuctionMessages"] = {
            },
            ["TalentSquelch|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t"] = {
            },
            ["MinimapButton"] = {
                ["global"] = {
                    ["minimap"] = {
                        ["hide"] = true,
                    },
                },
            },
            ["Timestamps"] = {
            },
        },
        ["profileKeys"] = {
            ["Soulaire - Khadgar"] = "Soulaire - Khadgar",
        },
        ["global"] = {
            ["welcome"] = false,
            ["modules"] = {
                ["Multiple Invite Command"] = false,
                ["Custom Named Chat Filters"] = false,
                ["Who Whispered Me"] = false,
                ["Who Taunted"] = false,
                ["Gamemenu Button"] = false,
                ["Custom Names"] = false,
                ["Invite Links"] = false,
                ["Improved Auction Messages"] = false,
                ["Whisper Filter"] = false,
                ["Identify Chat Frames"] = false,
                ["Gold Calculator"] = false,
                ["Crap Cleaner"] = false,
                ["Auto Welcome"] = true,
                ["Repeat Command"] = false,
                ["Auto Set Role"] = false,
                ["Minimap Button"] = false,
                ["EditBox Alt Key Arrows"] = false,
                ["XP Left To Level"] = false,
                ["Alt Names"] = true,
                ["Timestamps"] = false,
                ["Keystone Announce"] = false,
                ["AFK/DNDFilter"] = false,
                ["Search"] = false,
                ["Channel Names"] = true,
                ["Talent Squelch"] = false,
                ["Scroll Reminder"] = false,
                ["Channel Sounds"] = true,
                ["Popup Messages"] = true,
                ["Datatext"] = false,
                ["Custom Chat Filters"] = false,
                ["Token Price"] = false,
                ["Calculator"] = false,
                ["In Command"] = false,
                ["Custom Emotes"] = false,
                ["Companions"] = false,
                ["Item Level Link"] = true,
                ["Auto Profession Link"] = false,
                ["Reputation"] = false,
                ["AFK/DND Filter"] = false,
                ["Role Poll Command"] = false,
                ["Auto Congratulate"] = true,
            },
        },
    }
end