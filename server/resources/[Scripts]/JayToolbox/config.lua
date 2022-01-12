Config = {}

Config.Activation = {
    command = {
        cmd = "/toolbox",
        toolTip = "Opens a utility toolbox"
    },
    keymap = {
        enabled = true,
        default = "J"
    }
}

Config.PoliceToolbox = {
    enabled = true,
    components = {
        grab = {
            enabled = true,
            name = "Grab Subject",
            description = "Drag a nearby player"
        },
        handcuff = {
            enabled = true,
            name = "Cuff Subject",
            description = "Handcuffs a nearby player"
        },
        search = {
            enabled = true,
            name = "Search Subject",
            description = "Opens the ESX PoliceJob Search Menu"
        },
        inCar = {
            enabled = true,
            name = "Place In Car",
            description = "Place a nearby player in a car"
        },
        outOfCar = {
            enabled = true,
            name = "Remove From Car",
            description = "Remove a nearby player from a car"
        },
        setSpikes = {
            enabled = true,
            name = "Set Spikes",
            description = "Set a spike strip"
        },
        toggleCarbine = {
            enabled = true,
            name = "Toggle Carbine",
            description = "Rack or Unrack your carbine rifle",
            options = {
                addAndRemoveWeapon = true,
                sendMessage = true
            }
        },
        toggleShotgun = {
            enabled = true,
            name = "Toggle Shotgun",
            description = "Rack or Unrack your shotgun",
            options = {
                addAndRemoveWeapon = true,
                sendMessage = true
            }
        }
    }
}