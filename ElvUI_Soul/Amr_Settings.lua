local RUI = select(2, ...):unpack()

function RUI:AskMrRobotSettings(layout)
    AskMrRobot.db.profile.options.autoGear = true
    AskMrRobot.db.profile.options.shopAh = true
end
